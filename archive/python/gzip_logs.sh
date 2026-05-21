dt=`date +'%d%m%Y-%H%M'`

SOURCE_DIR='/tmp/portal-log'
DEST_DIR='/tmp/aot_uploads'

#gzip the files

#find ~/portal-log/ -mtime 0 | xargs tar -zxvf aot_logs_$dt.gz 
find $SOURCE_DIR -name aspect_\* -mtime 0 -type f | xargs tar -zcvf $SOURCE_DIR/aot_logs_$dt.gz

#Move the file to destination

rsync -avz $SOURCE_DIR/aot_logs_*.gz uk1as38:$DEST_DIR

#Remove the gzip file
ls -lrt $SOURCE_DIR/aot_logs_$dt.gz
rm -rf $SOURCE_DIR/aot_logs_$dt.gz
