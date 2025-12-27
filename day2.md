# Day 2 – File Viewing and Permissions

## Commands Learned
- cat --> used to read a file
- less  --> scrollable file
- head  --> shows the first few lines (default 10 lines) 
   |-- to change the default to required lines use -n , ex head -n 5 filename.
- tail --> shows the last few lines (default 10 lines)
- ls -l --> shows the  permissions to the current file 
- chmod --> used for changing the permissions 

## To change the permissions . practice 

chmod 600 filename

gives -rwx------

a total of 10 chars , the first 1 char represents (-) file or (d) directory ,
 next successive three represents permissions to owner , groups and others  ,
 in which , the numericals 4 , 2 , 1 represents read , write and execute respectively, can  combine 
like 4+2 for Both read and write

chmod 600 file.txt
Owner: 6 → read + write
Group: 0 → none
Others: 0 → none

chmod 644 file.txt
Owner: 6 → read + write
Group: 4 → read
Others: 4 → read

chmod 755 script.sh
Owner: 7 → read + write + execute
Group: 5 → read + execute
Others: 5 → read + execute

## Permission Understanding
- r = read
- w = write
- x = execute
- Permissions apply to owner, group, others

## Practice
- Viewed files using cat and less
- Changed file permissions using chmod

