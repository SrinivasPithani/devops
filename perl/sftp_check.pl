#!/usr/bin/perl -w

# $Id$

use File::Basename;
use File::Copy;

$rsync = '';
$qualify = '';
$tail='.bkp';

while (<>)
{
        $env .= $_;
}
eval $env;
die "$_ : $@" if $@;
print $env;
$| = 1 ;
open 'WGET',"wget -nv -N -r -l inf -x -P $prefix $url 2>&1 |" or die "wget spawn error : $!";
print "--8<-- ", scalar localtime(), "\n";

while(<WGET>)
{
        if (($fullname) = m/.+ URL:.+ -> "(.+)"/o)
        {
                ($base, $path, $suffix) = fileparse($fullname, @suffixlist);
                if ( $suffix && $suffix ne '.listing' )
                {
                        
                        $lastdir = '';
                        chomp($lastdir = `date --iso-8601=seconds --utc`) if $qualify;
                        $lastdir .= '_' if $qualify;

                        for $dest (@destlist)
                        {
                                copy($path.$base.$suffix, $dest.$lastdir.$base.$suffix.$tail)
                                        or print STDERR $dest.$lastdir.$base.$suffix." : $!"."\n";
                        }
                }

        }
        print $fullname, "\n";
} 
close WGET;

if ($rsync)
{
        for $dest (@destlist)
        {
                print $dest;
        }
}
