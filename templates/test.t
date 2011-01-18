use 5.010;                  # Enable Modern Perl features as of 5.10
use strict;                 # Must declare all variables before using them
use warnings;               # Emit helpful warnings
use Test::More;             # Testing module
use Data::Section -setup;   # Have various DATA sections, allows for mock files
use lib 'lib';              # add 'lib' to @INC

#use CURRENT_MODULE_NAME;
use autodie;    # Automatically throw fatal exceptions for common unrecoverable
                #   errors (e.g. trying to open a non-existent file)

my $result   = scalar_from('input');
my $expected = scalar_from('expected');
is( $result,   $expected, 'dummy test' );
is( $result,   "A\n",     'result dummy test' );
is( $expected, "A\n",     'expected dummy test' );

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

#---------------------------------------------------------
# IMPORTANT!
#
# Each line from each section ends in a newline character 
#---------------------------------------------------------

__DATA__
__[ input ]__
A
__[ expected ]__
A
