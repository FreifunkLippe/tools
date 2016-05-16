#! /bin/bash

# Script for uploading firmware to buildserver
#
# Created by: Collimas

#-variables

#-functions

upload_buildserver(){
      sshpass -p 'mypwd' scp -v -r /home/michael/fflip-fw/firmware/upload/stable/* collimas@remote.awbev.de:/firmware
}

#-main

upload_buildserver
