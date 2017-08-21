#!/usr/bin/perl

print "Enter the number:" ;
chomp($count = <STDIN>);

if ($count gt 0) {
	while ($count){
		$sum += 2;
		$count--;
	} 
		print "Sum of numbers is " . $sum ."\n" ;
	}
	else{
		print "Enter number greater than zero \n";
		}
