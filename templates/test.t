{{
        $module_name = $dist->name;
        $module_name =~ s{ [-] }{::}xmsg;
        ''; # Return empty string
}}use 5.008;                  # Require at least Perl version 5.8
use strict;                 # Must declare all variables before using them
use warnings;               # Emit helpful warnings
use Test::More;             # Testing module
use Test::LongString;       # Compare strings byte by byte
use Data::Section -setup;   # Have various DATA sections, allows for mock files
use lib 'lib';              # add 'lib' to @INC
use {{$module_name}};       # we're testing {{$module_name}} after all

use English '-no_match_vars'; # Readable names for special variables
                              #  (e.g. $@ is $EVAL_ERROR)

use autodie;    # Automatically throw fatal exceptions for common unrecoverable
                #   errors (e.g. trying to open a non-existent file)

my $result   = scalar_from('input');
my $expected = scalar_from('expected');

is_string( $result,   $expected, 'dummy test' );
is_string( $result,   "A\n",     'dummy result test' );
is_string( $expected, "A\n",     'dummy expected test' );

done_testing();
print "TODO: Explicitly document number of tests when finished adding tests.\n";

sub sref_from {
    my $section = shift;

    #Scalar reference from the section
    return __PACKAGE__->section_data($section);
}

sub scalar_from {
    my $section = shift;

    #Get the scalar reference
    my $sref = sref_from($section);

    #Return the actual scalar (probably a string), not the reference to it
    return ${$sref};
}

sub fh_from {
    my $section = shift;
    my $sref  = sref_from($section);

    #Create filehandle to the referenced scalar
    open( my $fh, '<', $sref );
    return $fh;
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
