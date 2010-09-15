#!/usr/bin/perl -w
use strict;
my $in_term = shift;
my $out_term = shift;
my @in_name = glob "*";
for my $in_name(@in_name){
	my $out_name = "temp.txt";
	open(my $in_fh,'<',$in_name);
	open(my $temp_fh, '>',$out_name);
	while(<$in_fh>){
		s/$in_term/$out_term/g;
		print $temp_fh $_;
	}
	close($in_fh);
	close($temp_fh);
	`mv $out_name $in_name`;
    if($in_name =~ m{
                        [.]
                        (?:
                          pl
                        | t
                        )
                        \z
                        }xms
                        ){
                          `chmod u+x $in_name`;
                        }
}

