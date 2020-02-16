#!/bin/sh

umount -l /mnt/gentoo/dev
umount -l /mnt/gentoo/sys
umount -l /mnt/gentoo/proc
umount /mnt/gentoo/var/lock
umount /mnt/gentoo/var/tmp
umount /mnt/gentoo/var
umount /mnt/gentoo/usr
umount /mnt/gentoo/home
umount /mnt/gentoo/run
umount /mnt/gentoo/tmp
umount /mnt/gentoo/boot

