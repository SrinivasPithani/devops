#!/usr/bin/perl

my $match = "inet 172.31.55.4  netmask 255.255.240.0  broadcast 172.31.63.255";
if ($match =~ /inet/) {
 print "Match found \n"
 
} else {
 print "You aren't abba \n";
}
