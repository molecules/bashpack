package {{$name}};
use 5.008;                # Require at least Perl version 5.8
# use strict;             # Must declare all variables before using them
# use warnings;           # Emit helpful warnings
use Moose;                # Use Modern Perl OO (automatic strict and warnings)
use namespace::autoclean; #   remove imported symbols from class namespace
no indirect ':fatal';     # Don't allow indirect method calls
use autodie;              # Throw fatal exceptions for common unrecoverable
                          #   errors (e.g. trying to open a non-existent file)
#-----------------------------------------------------------------------------

#=============================================================================
# Run as a program if it isn't being used like a module
unless( caller() ){
    main(@ARGV);
}

sub main {
    return;
}
#-----------------------------------------------------------------------------


# Moose 
__PACKAGE__->meta->make_immutable;  # Moose: Disable changing class defintion,
                                    #   This speeds up object creation.

1;  #Modules must return a true value
