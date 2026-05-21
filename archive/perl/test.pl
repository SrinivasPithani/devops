#!/usr/bin/perl

@list = (1, 2, 3);

sub add{

	foreach (@_) {
	$sum += $_;
	}
	print $sum ;
}

&add;
