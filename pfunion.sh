#!/bin/bash
#
# Title: PercyFlix (Reference Title File)
# Authors: HNic
# URL: https://percyfilx.com
# GNU: General Public License v1.0
################################################################################
sleep 2
 
hdpath="$(cat /var/mediaguide/server.hd.path)"
mergerfs -o sync_read,auto_cache,dropcacheonclose=true,use_ino,allow_other,func.getattr=newest,category.create=ff,minfreespace=0,fsname=pfunion \
$hdpath/move:$hdpath/downloads:/mnt/tdrive:/mnt/gdrive:/mnt/tcrypt:/mnt/gcrypt /mnt/pfmerger
