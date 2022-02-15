
```
sudo mkfs.ext4 -m 0 -E lazy_itable_init=0,lazy_journal_init=0,discard /dev/sdb

# HDD를 EXT4로 포맷 (구글에서 권장한 flag 사용)
$ sudo mkfs.ext4 -m 0 -E lazy_itable_init=0,lazy_journal_init=0,discard /dev/sdb
$ sudo mkdir -p /mnt/disks/sdb
$ sudo mount -o discard,defaults /dev/sdb /mnt/disks/sdb
$ sudo chmod a+w /mnt/disks/sdb
$ sudo blkid /dev/sdb
add following line on /etc/fstab
UUID=30f7f03f-dac4-42a3-b6d1-5e31b8976347 /mnt/disks/sdb ext4 discard,defaults,nobootwait 0 2

```
