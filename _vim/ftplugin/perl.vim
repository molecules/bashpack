if ! exists("g:did_perl_statusline")
    setlocal statusline+=%(\ %{StatusLineIndexLine()}%)
    setlocal statusline+=%=
    setlocal statusline+=%f\ 
    setlocal statusline+=%P\ \ \ \ 
    let g:did_perl_statusline = 1
endif

if has( 'perl' )
perl << EOP
    use strict;

    sub not_in {
        my $area_type = shift;
        return 'not in ' . $area_type;
    }

    sub current_line_number {
        my $curwin = $main::curwin;
        my ( $line_number, $column  ) = $curwin->Cursor;
        return $line_number;
    }

    sub current_document {
        my $curbuf = $main::curbuf;
        my @document = map { $curbuf->Get($_) } 0 .. $curbuf->Count;
        return @document;
    }

    sub current_area {
        my $type = shift;
        my $start_tag = shift;
        my $end_tag = shift;
        my @document = current_document();
        my $line_number = current_line_number();
        my $sub_name = not_in($type);
        for my $i ( reverse ( 1 .. $line_number  -1 ) ) {
            my $line = $document[$i];
            if ( $line =~ /^$start_tag\s+(\w+)/ ) {
                $sub_name = $1;
                last;
            }elsif ( $line =~ /^$end_tag/ ){
                last;
            }
        }
        return $sub_name;
    }

    sub current_sub {
        my @document = current_document();
        my $line_number = current_line_number();
        my $sub_name = current_area('sub','sub','}');
        my $section_name = current_area('section','#:','#\.');
        my $pod_name = current_area('POD','=head1','=cut');
        if($pod_name ne not_in('POD') ){
            $section_name = 'POD';
            $sub_name = $pod_name;
        }

        VIM::DoCommand "let subName='$line_number: $section_name ($sub_name) '";
    }
EOP

function! StatusLineIndexLine()
  perl current_sub()
  return subName
endfunction
endif

