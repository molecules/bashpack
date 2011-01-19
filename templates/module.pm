use 5.008;              # Require at least Perl version 5.8


#-----------------------------------------------------------------------------
# Modern Perl / programming safely.
use Moose;                # Use Modern Perl OO (automatic strict and warnings)
use namespace::autoclean; # Moose: remove imported symbols from class namespace

# use strict;             # Must declare all variables before using them
# use warnings;           # Emit helpful warnings

no indirect ':fatal';   # Don't allow indirect method calls

use autodie;    # Automatically throw fatal exceptions for common unrecoverable
                #   errors (e.g. trying to open a non-existent file)

#-----------------------------------------------------------------------------


#-----------------------------------------------------------------------------
# Run as a program if it isn't being used like a module
unless( caller() ){
    main(@ARGV);
}

sub main {

    return;
}


# Moose 
__PACKAGE__->meta->make_immutable;  # Speed up object creation by disabling
                                    #   changes to class definition. 
1;
