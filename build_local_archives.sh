#!/bin/bash

# Description: Creates localized firmware archives
# License: GPLv3
# Requirements: /usr/bin/zip

# Variables ##################################################################
IMAGE_PATH=""
ARCHIVE_PATH=""
ERROR_LOG=""
VERSION="0.8.14"
D1=( ex ff lip )
D2=( ad dt hb la )
D3=( kt le )
D4=( bs lh oe sc )

# Functions ##################################################################
usage()
{
  cat << EOF
  usage: $0 OPTIONS
  Description: Creates localized firmware archives
  
  OPTIONS:
  -h Shows this help
  -I <"String"> Sets the path where to look for the image binaries.
  -A <"String"> Sets the path where to create the Zip-Archives.
  -L <"String"> Sets the path for the error log.
EOF
}

# Main #######################################################################
if [ ! -x /usr/bin/zip ]; then
  echo "\nERROR: Das Paket 'zip' ist nicht installiert.\n"
  exit 1
fi

while getopts .hI:A:L:. OPTION
do
  case $OPTION in
    h)
      usage
      exit;;
    I)
      IMAGE_PATH="${OPTARG}"
      ;;
    A)
      ARCHIVE_PATH="${OPTARG}"
      ;;
    L)
      ERROR_LOG="${OPTARG}"
      ;;
    ?)
      usage
      exit;;
  esac
done

if [ ! -d "${ARCHIVE_PATH}" ]; then
  mkdir -p "${ARCHIVE_PATH}"
fi

for town in "${D1[@]}"
  do
    if [ -e "${ARCHIVE_PATH}/All_factory_images_for_${town}_${VERSION}".zip ]
    then
      /bin/rm "${ARCHIVE_PATH}/All_factory_images_for_${town}_${VERSION}".zip
    fi
    if [ -e "${ARCHIVE_PATH}/All_sysupgrade_images_for_${town}_${VERSION}".zip ]
    then
      /bin/rm "${ARCHIVE_PATH}/All_factory_images_for_${town}_${VERSION}".zip
    fi
    /usr/bin/zip -j "${ARCHIVE_PATH}/All_factory_images_for_${town}_${VERSION}".zip "${IMAGE_PATH}"/d1/"${town}"/factory/*.bin > /dev/null 2> "${ERROR_LOG}"
    /usr/bin/zip -j "${ARCHIVE_PATH}/All_sysupgrade_images_for_${town}_${VERSION}".zip "${IMAGE_PATH}"/d1/"${town}"/sysupgrade/*.bin > /dev/null 2> "${ERROR_LOG}"
done

for town in "${D2[@]}"
  do
    if [ -e "${ARCHIVE_PATH}/All_factory_images_for_${town}_${VERSION}".zip ]
    then
      /bin/rm "${ARCHIVE_PATH}/All_factory_images_for_${town}_${VERSION}".zip
    fi
    if [ -e "${ARCHIVE_PATH}/All_sysupgrade_images_for_${town}_${VERSION}".zip ]
    then
      /bin/rm "${ARCHIVE_PATH}/All_factory_images_for_${town}_${VERSION}".zip
    fi
    /usr/bin/zip -j "${ARCHIVE_PATH}/All_factory_images_for_${town}_${VERSION}".zip "${IMAGE_PATH}"/d2/"${town}"/factory/*.bin > /dev/null 2> "${ERROR_LOG}"
    /usr/bin/zip -j "${ARCHIVE_PATH}/All_sysupgrade_images_for_${town}_${VERSION}".zip "${IMAGE_PATH}"/d2/"${town}"/sysupgrade/*.bin > /dev/null 2> "${ERROR_LOG}"
done

for town in "${D3[@]}"
  do
    if [ -e "${ARCHIVE_PATH}/All_factory_images_for_${town}_${VERSION}".zip ]
    then
      /bin/rm "${ARCHIVE_PATH}/All_factory_images_for_${town}_${VERSION}".zip
    fi
    if [ -e "${ARCHIVE_PATH}/All_sysupgrade_images_for_${town}_${VERSION}".zip ]
    then
      /bin/rm "${ARCHIVE_PATH}/All_factory_images_for_${town}_${VERSION}".zip
    fi
    /usr/bin/zip -j "${ARCHIVE_PATH}/All_factory_images_for_${town}_${VERSION}".zip "${IMAGE_PATH}"/d3/"${town}"/factory/*.bin > /dev/null 2> "${ERROR_LOG}"
    /usr/bin/zip -j "${ARCHIVE_PATH}/All_sysupgrade_images_for_${town}_${VERSION}".zip "${IMAGE_PATH}"/d3/"${town}"/sysupgrade/*.bin > /dev/null 2> "${ERROR_LOG}"
done

for town in "${D4[@]}"
  do
    if [ -e "${ARCHIVE_PATH}/All_factory_images_for_${town}_${VERSION}".zip ]
    then
      /bin/rm "${ARCHIVE_PATH}/All_factory_images_for_${town}_${VERSION}".zip
    fi
    if [ -e "${ARCHIVE_PATH}/All_sysupgrade_images_for_${town}_${VERSION}".zip ]
    then
      /bin/rm "${ARCHIVE_PATH}/All_factory_images_for_${town}_${VERSION}".zip
    fi
    /usr/bin/zip -j "${ARCHIVE_PATH}/All_factory_images_for_${town}_${VERSION}".zip "${IMAGE_PATH}"/d4/"${town}"/factory/*.bin > /dev/null 2> "${ERROR_LOG}"
    /usr/bin/zip -j "${ARCHIVE_PATH}/All_sysupgrade_images_for_${town}_${VERSION}".zip "${IMAGE_PATH}"/d4/"${town}"/sysupgrade/*.bin > /dev/null 2> "${ERROR_LOG}"
done
