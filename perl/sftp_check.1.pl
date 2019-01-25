use warnings;
use File::Basename;
use File::Copy;
use Net::SFTP::Foreign;
use File::Temp;
use autodie;

$Net::SFTP::Foreign::debug = -1;
$host = 'sftp.platts.com';
$user = 'plt_aspect';
$password = 'ftp59562';

my $sftp = Net::SFTP::Foreign->new($host, user => $user, password => $password);
$sftp->die_on_error("SSH Connection failed") ;
#print($sftp->status)

$remote_dir = 'postclose';
$local_dir = 'local_dir' ;

$sftp->setcwd($remote_dir) or die ("unable to connect to remote dir") ;
my @files = @{$sftp->ls};
for my $file (@files) {
  print($file);
  $sftp->rget($remote_dir, $local_dir);
}
 
#$sftp->die_on_error("Unable to connect") ;

