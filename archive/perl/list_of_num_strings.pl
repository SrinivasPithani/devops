#!/usr/bin/perl

print "Enter number between 1-7:\n" ;
@input = qw[fred betty barney dino wilma pebbles bamm-bamm];

@options = <STDIN>;

foreach (@options){
	print "@input[$_ - 1]\n";
}
