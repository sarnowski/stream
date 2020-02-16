#!/bin/sh

mount /dev/mmcblk0p2 /mnt/gentoo/boot
mount /dev/mapper/vg0-usr /mnt/gentoo/usr
mount /dev/mapper/vg0-var /mnt/gentoo/var
mount /dev/mapper/vg0-tmp /mnt/gentoo/var/tmp
mount /dev/mapper/vg0-home /mnt/gentoo/home
mount -t tmpfs none /mnt/gentoo/tmp
mount -t tmpfs none /mnt/gentoo/run
mount -t tmpfs none /mnt/gentoo/var/lock
mount --types proc /proc /mnt/gentoo/proc
mount --rbind /dev /mnt/gentoo/dev
mount --rbind /sys /mnt/gentoo/sys
