use 5.008;      # Require at least Perl version 5.8
use strict;     # Must declare all variables before using them
use warnings;   # Emit helpful warnings
use autodie;    # Automatically throw fatal exceptions for common unrecoverable
                #   errors (e.g. trying to open a non-existent file)

unless( caller() ){
    main(@ARGV);
}

sub main {


    return;
}

1;
