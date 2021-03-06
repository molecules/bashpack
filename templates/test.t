{{
        $module_name = $dist->name;
        $module_name =~ s{ [-] }{::}xmsg;
        ''; # Return empty string
}}use 5.008;  # Require at least Perl version 5.8
use strict;   # Must declare all variables before using them
use warnings; # Emit helpful warnings
use autodie;  # Fatal exceptions for common unrecoverable errors (e.g. w/open)

# Testing-related modules
use Test::More;                  # provide testing functions (e.g. is, like)
use Test::LongString;            # Compare strings byte by byte
use Data::Section -setup;        # Set up labeled DATA sections
use File::Temp  qw( tempfile );  #
use File::Slurp qw( slurp    );  # Read a file into a string
use English '-no_match_vars'; # Readable names for special variables
                              #  (e.g. $@ is $EVAL_ERROR)
# Distribution-specific modules
use lib 'lib';              # add 'lib' to @INC
use {{$module_name}};       # we're testing {{$module_name}} after all


{
    my $input_filename  = filename_for('input');
    my $output_filename = temp_filename();
    system("cat $input_filename > $output_filename");
    #system("perl lib/MODULE.pm --infile $input_filename --outfile $output_filename");
    my $result   = slurp $output_filename;
    my $expected = string_from('expected');
    is( $result, $expected, 'successfully created and manipulated temp files' );
}

{
    my $filename = 'test.txt';
    assign_filename_for($filename,'input');
    my $result = slurp $filename;
    my $expected = string_from('expected');
    is($result, $expected, "successfully created '$filename'");
    delete_temp_file($filename);
}

done_testing();

sub sref_from {
    my $section = shift;

    #Scalar reference to the section text
    return __PACKAGE__->section_data($section);
}


sub string_from {
    my $section = shift;

    #Get the scalar reference
    my $sref = sref_from($section);

    #Return a string containing the entire section
    return ${$sref};
}

sub fh_from {
    my $section = shift;
    my $sref    = sref_from($section);

    #Create filehandle to the referenced scalar
    open( my $fh, '<', $sref );
    return $fh;
}

sub assign_filename_for {
    my $filename = shift;
    my $section  = shift;

    # Don't overwrite existing file
    die "'$filename' already exists." if -e $filename;

    my $string   = string_from($section);
    open(my $fh, '>', $filename);
    print {$fh} $string;
    close $fh;
    return;
}

sub filename_for {
    my $section           = shift;
    my ( $fh, $filename ) = tempfile();
    my $string            = string_from($section);
    print {$fh} $string;
    close $fh;
    return $filename;
}

sub temp_filename {
    my ($fh, $filename) = tempfile();
    close $fh;
    return $filename;
}

sub delete_temp_file {
    my $filename  = shift;
    my $delete_ok = unlink $filename;
    ok($delete_ok, "deleted temp file '$filename'");
}

#------------------------------------------------------------------------
# IMPORTANT!
#
# Each line from each section automatically ends with a newline character
#------------------------------------------------------------------------

__DATA__
__[ input ]__
A
__[ expected ]__
A
