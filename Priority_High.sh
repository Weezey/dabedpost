#!/bin/bash/
# outputs all log messages with a priority between 0 and 2 and saves the results in a file
journalctl -p 0..2 | cat > /home/student/Priority_High.txt 
