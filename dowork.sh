a#! /bin/bash

# Script for executing post-building firmware tasks
#
# Created by: Collimas

#-variables

SITES1=(`ls sites-d01`)
SITES2=(`ls sites-d02`)
SITES3=(`ls sites-d03`)
SITES4=(`ls sites-d04`)
SITESEX1=(`ls sites-d01-experimental`)
SITESEX2=(`ls sites-d02-experimental`)
SITESEX3=(`ls sites-d03-experimental`)
SITESEX4=(`ls sites-d04-experimental`)

#-functions

cleanup(){
  rm -rf /home/michael/fflip-fw/firmware
}

createdir(){
  mkdir /home/michael/fflip-fw/firmware
}

copy_stable_branch_to_workdir(){
  cp -r /home/michael/fflip-fw/gluon/output/images /home/michael/fflip-fw/firmware
}

copy_experimental_branch_to_workdir(){
  cp -r /home/michael/fflip-fw/gluon/output/images-experimental /home/michael/fflip-fw/firmware
}

create_upload_dir(){
  mkdir -p /home/michael/fflip-fw/firmware/upload/stable
  mkdir /home/michael/fflip-fw/firmware/upload/experimental
}

copy_sysupgrade_images_stable_d01(){
  for SITE in "${SITES1[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/upload/stable/d01/$SITE/upgrade
      cp /home/michael/fflip-fw/firmware/images/d01/$SITE/sysupgrade/* /home/michael/fflip-fw/firmware/upload/stable/d01/$SITE/upgrade
  done
}

copy_sysupgrade_images_stable_d02(){
  for SITE in "${SITES2[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/upload/stable/d02/$SITE/upgrade
      cp /home/michael/fflip-fw/firmware/images/d02/$SITE/sysupgrade/* /home/michael/fflip-fw/firmware/upload/stable/d02/$SITE/upgrade
  done
}

copy_sysupgrade_images_stable_d03(){
  for SITE in "${SITES3[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/upload/stable/d03/$SITE/upgrade
      cp /home/michael/fflip-fw/firmware/images/d03/$SITE/sysupgrade/* /home/michael/fflip-fw/firmware/upload/stable/d03/$SITE/upgrade
  done
}

copy_sysupgrade_images_stable_d04(){
  for SITE in "${SITES4[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/upload/stable/d04/$SITE/upgrade
      cp /home/michael/fflip-fw/firmware/images/d04/$SITE/sysupgrade/* /home/michael/fflip-fw/firmware/upload/stable/d04/$SITE/upgrade
  done
}

copy_sysupgrade_images_experimental_d01(){
  for SITE in "${SITESEX1[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/upload/experimental/d01/$SITE/upgrade
      cp /home/michael/fflip-fw/firmware/images-experimental/d01/$SITE/sysupgrade/* /home/michael/fflip-fw/firmware/upload/experimental/d01/$SITE/upgrade
  done
}

copy_sysupgrade_images_experimental_d02(){
  for SITE in "${SITESEX2[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/upload/experimental/d02/$SITE/upgrade
      cp /home/michael/fflip-fw/firmware/images-experimental/d02/$SITE/sysupgrade/* /home/michael/fflip-fw/firmware/upload/experimental/d02/$SITE/upgrade
  done
}

copy_sysupgrade_images_experimental_d03(){
  for SITE in "${SITESEX3[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/upload/experimental/d03/$SITE/upgrade
      cp /home/michael/fflip-fw/firmware/images-experimental/d03/$SITE/sysupgrade/* /home/michael/fflip-fw/firmware/upload/experimental/d03/$SITE/upgrade
  done
}

copy_sysupgrade_images_experimental_d04(){
  for SITE in "${SITESEX4[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/upload/experimental/d04/$SITE/upgrade
      cp /home/michael/fflip-fw/firmware/images-experimental/d04/$SITE/sysupgrade/* /home/michael/fflip-fw/firmware/upload/experimental/d04/$SITE/upgrade
  done
}

#-main

cleanup
createdir
copy_stable_branch_to_workdir
copy_experimental_branch_to_workdir
create_upload_dir
copy_sysupgrade_images_stable_d01
copy_sysupgrade_images_stable_d02
copy_sysupgrade_images_stable_d03
copy_sysupgrade_images_stable_d04
copy_sysupgrade_images_experimental_d01
copy_sysupgrade_images_experimental_d02
copy_sysupgrade_images_experimental_d03
copy_sysupgrade_images_experimental_d04
