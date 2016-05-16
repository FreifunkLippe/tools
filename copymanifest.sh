#! /bin/bash

# Script for downloading signed manifest files from buildserver
#
# Created by: Collimas

#-variables

SITES1=(`ls sites-d01`)
SITES2=(`ls sites-d02`)
SITES3=(`ls sites-d03`)
SITES4=(`ls sites-d04`)

#-functions

create_manifest_dir(){
  mkdir /home/michael/fflip-fw/firmware/manifest
}

copy_manifest_files_d01(){
  for SITE in "${SITES1[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/manifest/d01/$SITE/upgrade
      sshpass -p 'mypwd' scp -v -r collimas@remote.awbev.de:/firmware/d01/$SITE/upgrade/stable.manifest /home/michael/fflip-fw/firmware/manifest/d01/$SITE/upgrade
  done
}

copy_manifest_files_d02(){
  for SITE in "${SITES2[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/manifest/d02/$SITE/upgrade
      sshpass -p 'mypwd' scp -v -r collimas@remote.awbev.de:/firmware/d02/$SITE/upgrade/stable.manifest /home/michael/fflip-fw/firmware/manifest/d02/$SITE/upgrade
  done
}

copy_manifest_files_d03(){
  for SITE in "${SITES3[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/manifest/d03/$SITE/upgrade
      sshpass -p 'mypwd' scp -v -r collimas@remote.awbev.de:/firmware/d03/$SITE/upgrade/stable.manifest /home/michael/fflip-fw/firmware/manifest/d03/$SITE/upgrade
  done
}

copy_manifest_files_d04(){
  for SITE in "${SITES4[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/manifest/d04/$SITE/upgrade
      sshpass -p 'mypwd' scp -v -r collimas@remote.awbev.de:/firmware/d04/$SITE/upgrade/stable.manifest /home/michael/fflip-fw/firmware/manifest/d04/$SITE/upgrade
  done
}

#-main

create_manifest_dir
copy_manifest_files_d01
copy_manifest_files_d02
copy_manifest_files_d03
copy_manifest_files_d04
