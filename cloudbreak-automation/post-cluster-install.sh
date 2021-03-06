#!/bin/bash

# Globals

source /opt/demo/shared.sh
CNT=$(grep $HOSTNAME /etc/hosts | wc -l)
if [ $CNT -eq 0 ] ; then
   sed -i '/internal/ s/$/ '"$HOSTNAME"'/' /etc/hosts
   hostnamectl set-hostname $HOSTNAME
fi

cd /opt/demo
./setup.sh 
