#!/bin/env perl
#SBATCH -J {{$name}} 
#SBATCH -e {{$name}}_%j_e.txt
#SBATCH -o {{$name}}_%j_o.txt
#SBATCH --cpus-per-task 1
#SBATCH --mem 40G
#SBATCH --nodes=1
#package {{$name}};
# ABSTRACT: {{$name}} needs an ABSTRACT!

#=============================================================================
# STANDARD MODULES AND PRAGMAS
use v5.10;    # Require at least Perl version 5.10
use strict;   # Must declare all variables before using them
use warnings; # Emit helpful warnings
use autodie;  # Fatal exceptions for common unrecoverable errors (e.g. open)
use Getopt::Long::Descriptive; # Parse @ARGV as command line flags and arguments
use Carp qw( croak );   # Throw errors from calling function

#=============================================================================
# ADDITIONAL MODULES


#=============================================================================
# DEBUGGING MODULES
#

use Data::Show;

#
# DEBUGGING MODULES
#=============================================================================

#=============================================================================
# CONSTANTS

# Boolean
my $TRUE =1;
my $FALSE=0;

# String
my $SPACE        = q{ };
my $EMPTY_STRING = q{};

my @REQUIRED_FLAGS = qw( infile outfile );

# CONSTANTS
#=============================================================================

#=============================================================================
# COMMAND LINE

# Run as a command-line program if not used as a module
main(@ARGV) if !caller();

sub main {

    #-------------------------------------------------------------------------
    # COMMAND LINE INTERFACE                                                 #
    #                                                                        #
    my ( $opt, $usage ) = describe_options(
        '%c %o <some-arg>',
        [ 'infile|i=s',  'input file name', ],
        [ 'outfile|o=s', 'output file name', ],
        [],
        [ 'help', 'print usage message and exit' ],
    );

    my $exit_with_usage = sub {
        print "\nUSAGE:\n";
        print $usage->text();
        exit();
    };

    # If requested, give usage information regardless of other options
    $exit_with_usage->() if $opt->help;

    # Make some flags required
    my $missing_required = $FALSE;
    for my $flag (@REQUIRED_FLAGS) {
        if ( !defined $opt->$flag ) {
            print "Missing required option '$flag'\n";
            $missing_required = $TRUE;
        }
    }

    # Exit with usage statement if any required flags are missing
    $exit_with_usage->() if $missing_required;

    #                                                                        #
    # COMMAND LINE INTERFACE                                                 #
    #-------------------------------------------------------------------------

    #-------------------------------------------------------------------------
    #                                                                        #
    #                                                                        #

    open( my $fh_in,  '<', $opt->infile );
    open( my $fh_out, '>', $opt->outfile );

    process( {  fh_in  => $fh_in,
                fh_out => $fh_out,
             },
    );

    close $fh_in;
    close $fh_out;
    return;

    #                                                                        #
    #                                                                        #
    #-------------------------------------------------------------------------
}

# COMMAND LINE
#=============================================================================

#=============================================================================
#

sub process {
    my ($arg_ref) = @_;

    my $fh_in  = $arg_ref->{fh_in };
    my $fh_out = $arg_ref->{fh_out};

    # To be implemented
    die 'subroutine "process" not implemented yet!';

    return;
}

#
#=============================================================================

#-----------------------------------------------------------------------------

1;  #Modules must return a true value
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


=head1 DIAGNOSTICS

    A list of every error and warning message that the module can generate
    (even the ones that will "never happen"), with a full explanation of each
    problem, one or more likely causes, and any suggested remedies.  (See also
    "Documenting Errors" in PBP Chapter 13.)

=head1 CONFIGURATION AND ENVIRONMENT

     A full explanation of any configuration system(s) used by the module,
     including the names and locations of any configuration files, and the
     meaning of any environment variables or properties that can be set. These
     descriptions must also include details of any configuration language
     used.  (See also "Configuration Files" in PBP Chapter 19.)

=head1 DEPENDENCIES

     A list of all the other modules that this module relies upon, including
     any restrictions on versions, and an indication of whether these required
     modules are part of the standard Perl distribution, part of the module's
     distribution, or must be installed separately.

=head1 INCOMPATIBILITIES

    None known

=head1 BUGS AND LIMITATIONS

     There are no known bugs in this module.
     Please report problems to {{@{ $dist->authors} }}.
     Patches are welcome.

=head1 SEE ALSO

=head1 ACKNOWLEDGEMENTS

    POD templates adapted from Perl Best Practices by Damian Conway
