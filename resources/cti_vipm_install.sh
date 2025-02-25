#! /bin/bash

if [ "$EUID" -ne 0 ]
then echo "This script must be run as root. Run with sudo $0"
  exit 1
fi

REBOOT=F

#create sysctl conf to embiggen max file count as vipm leaves files open
#while performing operations
if ! test -f /etc/sysctl.d/vipm-files.conf; then
  echo "fs.file-max = 2000000" > /etc/sysctl.d/vipm-files.conf
  REBOOT=T
fi

mkdir -p /usr/local/JKI/VIPM
mkdir -p /etc/JKI

#enable user write access to LabVIEW install. This matches Windows installs
# and is required to run VIPM as user instead of as root to be able to
# install packages within LabVIEW install.
chown $SUDO_USER -R /usr/local/natinst/LabVIEW*

echo Unzipping VIPM
unzip "$1" -d /usr/local/JKI/VIPM

chown $SUDO_USER -R /usr/local/JKI/VIPM
chown $SUDO_USER /etc/JKI

ln -s /usr/local/JKI/VIPM/vipm /usr/bin/vipm

echo "Complete. You must restart the system."
exit 0

___END_OF_SHELL_SCRIPT___
