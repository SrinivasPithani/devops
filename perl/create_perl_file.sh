#!/usr/bin/bash

touch $1.pl
chmod 755 $1.pl

echo "#!/usr/bin/perl" >> $1.pl
