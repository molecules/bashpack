use 5.008;    # Require at least Perl version 5.8
use strict;   # Must declare all variables before using them
use warnings; # Emit helpful warnings

#------------------------------------------------------------------------
# WARNING 
# This is a failing test
#------------------------------------------------------------------------

# Testing-related modules
use Fennec;

# Set up labeled DATA sections
use Data::Section -setup;        


tests test1 => sub {
    my $result  = ${__PACKAGE__->section_data('inputA')};
    ok( $result, 'passed first test' );
};

tests test2 => sub {
    my $result = ${ __PACKAGE__->section_data('inputB') };
    ok( $result, 'passed second test' );
};

done_testing;


#------------------------------------------------------------------------
# IMPORTANT!
# Each line from each section automatically ends with a newline character
#------------------------------------------------------------------------

__DATA__
__[ inputA ]__
AAAAAAAAAAAAA
__[ inputB ]__
BBBBBBBB
