#!/bin/bash
# 3/21/2020 Day 8 of the COVID lockdown
FILENAME=auth_Backup.tgz #What I'm naming the backup
SRCFILE=/var/log/auth.log #The file I'm backing up
DESTDIR=/ #Where I want to put it
tar -cpzf $DESTDIR/$FILENAME $SRCFILE
#end 
