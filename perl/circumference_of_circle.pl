#!/usr/bin/perl

$pi = 3.142;

print "Enter the radius of circle:" ;

chomp($radius = <STDIN>) ;

if ($radius gt 0) {

	$circumference_of_circle = 2 * $pi * $radius;

	print $circumference_of_circle . "\n" ;
	} else {
		print "Enter number greater than zero \n";
	}
