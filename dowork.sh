#! /bin/bash

# Script for executing post-building firmware tasks
#
# Created by: Collimas

#-variables

SITES1=(`ls sites-d1`)
SITES2=(`ls sites-d2`)
SITES3=(`ls sites-d3`)
SITES4=(`ls sites-d4`)
SITESEX1=(`ls sites-d1-experimental`)
SITESEX2=(`ls sites-d2-experimental`)
SITESEX3=(`ls sites-d3-experimental`)
SITESEX4=(`ls sites-d4-experimental`)

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

copy_sysupgrade_images_stable_d1(){
  for SITE in "${SITES1[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/upload/stable/d1/$SITE/upgrade
      cp /home/michael/fflip-fw/firmware/images/d1/$SITE/sysupgrade/* /home/michael/fflip-fw/firmware/upload/stable/d1/$SITE/upgrade
  done
}

copy_sysupgrade_images_stable_d2(){
  for SITE in "${SITES2[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/upload/stable/d2/$SITE/upgrade
      cp /home/michael/fflip-fw/firmware/images/d2/$SITE/sysupgrade/* /home/michael/fflip-fw/firmware/upload/stable/d2/$SITE/upgrade
  done
}

copy_sysupgrade_images_stable_d3(){
  for SITE in "${SITES3[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/upload/stable/d3/$SITE/upgrade
      cp /home/michael/fflip-fw/firmware/images/d3/$SITE/sysupgrade/* /home/michael/fflip-fw/firmware/upload/stable/d3/$SITE/upgrade
  done
}

copy_sysupgrade_images_stable_d4(){
  for SITE in "${SITES4[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/upload/stable/d4/$SITE/upgrade
      cp /home/michael/fflip-fw/firmware/images/d4/$SITE/sysupgrade/* /home/michael/fflip-fw/firmware/upload/stable/d4/$SITE/upgrade
  done
}

copy_sysupgrade_images_experimental_d1(){
  for SITE in "${SITESEX1[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/upload/experimental/d1/$SITE/upgrade
      cp /home/michael/fflip-fw/firmware/images-experimental/d1/$SITE/sysupgrade/* /home/michael/fflip-fw/firmware/upload/experimental/d1/$SITE/upgrade
  done
}

copy_sysupgrade_images_experimental_d2(){
  for SITE in "${SITESEX2[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/upload/experimental/d2/$SITE/upgrade
      cp /home/michael/fflip-fw/firmware/images-experimental/d2/$SITE/sysupgrade/* /home/michael/fflip-fw/firmware/upload/experimental/d2/$SITE/upgrade
  done
}

copy_sysupgrade_images_experimental_d3(){
  for SITE in "${SITESEX3[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/upload/experimental/d3/$SITE/upgrade
      cp /home/michael/fflip-fw/firmware/images-experimental/d3/$SITE/sysupgrade/* /home/michael/fflip-fw/firmware/upload/experimental/d3/$SITE/upgrade
  done
}

copy_sysupgrade_images_experimental_d4(){
  for SITE in "${SITESEX4[@]}"
    do
      mkdir -p /home/michael/fflip-fw/firmware/upload/experimental/d4/$SITE/upgrade
      cp /home/michael/fflip-fw/firmware/images-experimental/d4/$SITE/sysupgrade/* /home/michael/fflip-fw/firmware/upload/experimental/d4/$SITE/upgrade
  done
}

#-main

cleanup
createdir
copy_stable_branch_to_workdir
copy_experimental_branch_to_workdir
create_upload_dir
copy_sysupgrade_images_stable_d1
copy_sysupgrade_images_stable_d2
copy_sysupgrade_images_stable_d3
copy_sysupgrade_images_stable_d4
copy_sysupgrade_images_experimental_d1
copy_sysupgrade_images_experimental_d2
copy_sysupgrade_images_experimental_d3
copy_sysupgrade_images_experimental_d4
