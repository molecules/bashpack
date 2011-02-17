#!/usr/bin/env perl6
# vim: filetype=perl6
use v6;

module MODULE;

our sub run ( $input_filename, $output_filename = 'out.txt' ) {
    my $fh = open $input_filename;
    return 1;
    CATCH {
        say qq{
            USAGE

            $*PROGRAM_NAME  input_filename [output_filename]
        };
    }
}

