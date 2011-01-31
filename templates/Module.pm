package {{$name}};
# ABSTRACT: {{$name}} needs an ABSTRACT!
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

__END__
=pod

=head1 SYNOPSIS
    use {{$name}};
    # Brief but working code example(s) here showing the most common usage(s)
    # This section will be as far as many users bother reading,
    # so make it as educational and exemplary as possible.

=head1 DESCRIPTION
    A full description of the module and its features.
    May include numerous subsections (i.e., =head2, =head3, etc.).

=head1 SUBROUTINES/METHODS
    A separate section listing the public components of the module's interface.
    These normally consist of either subroutines that may be exported, or methods
    that may be called on objects belonging to the classes that the module provides.
    Name the section accordingly.

    In an object-oriented module, this section should begin with a sentence of the
    form "An object of this class represents...", to give the reader a high-level
    context to help them understand the methods that are subsequently described.

=head1 DIAGNOSTICS
    A list of every error and warning message that the module can generate
    (even the ones that will "never happen"), with a full explanation of each
    problem, one or more likely causes, and any suggested remedies.
    (See also "Documenting Errors" in Chapter 13.)
    
=head1 CONFIGURATION AND ENVIRONMENT
     A full explanation of any configuration system(s) used by the module,
     including the names and locations of any configuration files, and the
     meaning of any environment variables or properties that can be set. These
     descriptions must also include details of any configuration language used.
     (See also "Configuration Files" in Chapter 19.)

=head1 DEPENDENCIES
     A list of all the other modules that this module relies upon, including any
     restrictions on versions, and an indication of whether these required modules are
     part of the standard Perl distribution, part of the module's distribution,
     or must be installed separately.

=head1 INCOMPATIBILITIES
     A list of any modules that this module cannot be used in conjunction with.
     This may be due to name conflicts in the interface, or competition for
     system or program resources, or due to internal limitations of Perl
     (for example, many modules that use source code filters are mutually
     incompatible).

=head1 BUGS AND LIMITATIONS
     There are no known bugs in this module.
     Please report problems to {{@{ $dist->authors} }}.
     Patches are welcome.

=head1 SEE ALSO

=head1 ACKNOWLEDGEMENTS

