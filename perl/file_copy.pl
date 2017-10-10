#!/usr/bin/perl

use File::Copy qw(copy);

print "Enter the source file: \n";
chomp($old_file = (<STDIN>));

print "Enter the dest file: \n";        
chomp($dest_file = (<STDIN>));

&func_copy($old_file,$dest_file) ;

sub func_copy {

	copy $old_file, $dest_file or die "File doesn't exist:$!" ;
}
