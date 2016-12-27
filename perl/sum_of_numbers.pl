#!/usr/bin/perl

chomp($count = <STDIN>);

if ($count gt 0) {
	while ($count){
		$sum += 2;
		$count--;
	} 
		print "Sum of number is " . $sum ."\n" ;
	}
	else{
		print "Enter number greater than zero \n";
		}
