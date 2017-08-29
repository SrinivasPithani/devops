#!/usr/bin/perl

my %hash_fruit = (
	"Kiwi" => "Green" ,
	"Banana" => "Yellow",
	"Apple" => "Red",
	"Grape" => "Black",
);

while (($key, $value) = each %hash_fruit) {
	print "$key => $value \n" ;
}

