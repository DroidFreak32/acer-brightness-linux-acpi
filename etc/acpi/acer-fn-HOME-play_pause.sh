#!/bin/sh
XUSER=$(ps -eo uname,args --sort start_time | grep mocp | awk '{print $1}' | head -n1)
sudo -u $XUSER /usr/bin/mocp -G