#!/usr/bin/perl

$line = <STDIN>;

if ($line eq "\n") {
	print "That was blank \n";
} else {
	print "That line of input was : $line";
}
