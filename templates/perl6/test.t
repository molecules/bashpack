#!/usr/bin/env perl6
# vim: filetype=perl6
use v6;               # Require Perl 6
use Test;             # Testing module

BEGIN { @*INC.unshift('DIRPATH/MODULE/lib'); }
use MODULE;

MODULE::run();



