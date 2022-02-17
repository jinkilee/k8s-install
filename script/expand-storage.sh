#!/bin/bash

STORAGE_NAME=$1
MOUNT_POINT=$2

# HDD를 EXT4로 포맷 (구글에서 권장한 flag 사용)
sudo mkfs.ext4 -m 0 -E lazy_itable_init=0,lazy_journal_init=0,discard $STORAGE_NAME
sudo mkdir -p $MOUNT_POINT
sudo mount -o discard,defaults $STORAGE_NAME $MOUNT_POINT
sudo chmod a+w $MOUNT_POINT

# sudo blkid $STORAGE_NAME
# add following line on /etc/fstab
# UUID=30f7f03f-dac4-42a3-b6d1-5e31b8976347 $MOUNT_POINT ext4 discard,defaults,nobootwait 0 2
