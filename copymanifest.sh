#! /bin/bash

# Script for downloading signed manifest files from buildserver
#
# Created by: Collimas

#-variables

SITES1=(`ls sites-d1`)
SITES2=(`ls sites-d2`)
SITES3=(`ls sites-d3`)
SITES4=(`ls sites-d4`)

#-functions

create_manifest_dir(){
  mkdir -p /home/michael/fflip-fw/firmware/manifest
}

copy_manifest_files_d1(){
  for SITE in "${SITES1[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/manifest/d1/$SITE/upgrade
      sshpass -p 'Ncar$2K15' scp -v -r collimas@remote.awbev.de:/firmware/d1/$SITE/upgrade/stable.manifest /home/michael/fflip-fw/firmware/manifest/d1/$SITE/upgrade
  done
}

copy_manifest_files_d2(){
  for SITE in "${SITES2[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/manifest/d2/$SITE/upgrade
      sshpass -p 'Ncar$2K15' scp -v -r collimas@remote.awbev.de:/firmware/d2/$SITE/upgrade/stable.manifest /home/michael/fflip-fw/firmware/manifest/d2/$SITE/upgrade
  done
}

copy_manifest_files_d3(){
  for SITE in "${SITES3[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/manifest/d3/$SITE/upgrade
      sshpass -p 'Ncar$2K15' scp -v -r collimas@remote.awbev.de:/firmware/d3/$SITE/upgrade/stable.manifest /home/michael/fflip-fw/firmware/manifest/d3/$SITE/upgrade
  done
}

copy_manifest_files_d4(){
  for SITE in "${SITES4[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/manifest/d4/$SITE/upgrade
      sshpass -p 'Ncar$2K15' scp -v -r collimas@remote.awbev.de:/firmware/d4/$SITE/upgrade/stable.manifest /home/michael/fflip-fw/firmware/manifest/d4/$SITE/upgrade
  done
}

#-main

create_manifest_dir
copy_manifest_files_d1
copy_manifest_files_d2
copy_manifest_files_d3
copy_manifest_files_d4
