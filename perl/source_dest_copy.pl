#!/usr/bin/perl

use File::Copy;

my $dir='/home/neon/devops/perl/ip_info.pl' ;
my $dest_dir='/tmp/dest/' ;
copy($dir, $dest_dir) or die "no source file exists:$!" ;
