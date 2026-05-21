#!/usr/bin/perl

my %hash_fruit = (
	"Kiwi" => "Green" ,
	"Banana" => "Yellow",
	"Apple" => "Red",
	"Grape" => "Black",
);

foreach $key (sort keys %hash_fruit) {
	$value = $hash_fruit{$key};
	print "$key => $value \n";
}
