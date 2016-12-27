#!/usr/bin/perl

print "Enter the string to be printed:";
chomp($string_name=<STDIN>);

print "Enter the number of times to be printed:";
chomp($number_of_times=<STDIN>);
	
print "$string_name \n" x $number_of_times ;
