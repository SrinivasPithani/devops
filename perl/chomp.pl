#!/usr/bin/perl

$text = "a line of text \n";
print chomp($text);

chomp($text = <STDIN>);
print $text;
