#!/usr/bin/perl

while (<>) {
	if (/(\d+)\.(\d+)\.(\d+)\.(\d+)/) {
		print "$1.$2.$3.$4\n";
	}
}
