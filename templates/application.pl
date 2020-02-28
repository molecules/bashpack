#!/bin/env perl
#SBATCH -J {{$name}} 
#SBATCH -e {{$name}}_%j_e.txt
#SBATCH -o {{$name}}_%j_o.txt
#SBATCH --cpus-per-task 1
#SBATCH --mem 40G
#SBATCH --nodes=1
use v5.10;      # Require at least Perl version 5.10
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
