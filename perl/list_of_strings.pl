#!/usr/bin/perl

@list_of_strings = chomp(@input = <STDIN>);

@list_of_strings = reverse (@list_of_strings);

print (@list_of_strings);
