#!/bin/bash

free -m | cat > /home/sysadmin/backups/freemem/free_mem.txt #prints the free memory
du -h / | cat > /home/sysadmin/backups/diskuse/disk_usage.txt #prints the diskusage
lsof | cat > /home/sysadmin/openlist/openlist.txt #prints a list of all open file
df -h | cat > /home/sysadmin/backups/freedisk/freedisk.txt #prints file system disk space stats in human readable form

var1 = 
var2 = ip addr | grep inet | tail -2 | head -1
var3 = find / -type f -perm /4000

if [!-d ~/research]
then
mkdir ~/research
fi

if [! -e ~/research/sys_info.txt
then 
rm ~research/sys_info.txt
fi
