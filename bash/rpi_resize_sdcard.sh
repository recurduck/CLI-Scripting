#Raspberry pi 4 way to resize sd card partition if is not updated to the real one

df -h /
# [root@localhost ~]# df -h /
# Filesystem      Size  Used Avail Use% Mounted on
# /dev/root       1.7G  1.7G  0  100% /

fdisk -l
# [root@localhost ~]# fdisk -l
# ...
#         Device Boot      Start         End      Blocks   Id  System
# /dev/mmcblk0p1   *        8192      593919      292864    c  W95 FAT32 (LBA)
# /dev/mmcblk0p2          593920     1593343      499712   82  Linux swap / Solaris
# /dev/mmcblk0p3         1593344     5109759     1758208   83  Linux

growpart /dev/mmcblk0 3
# [root@localhost ~]# growpart /dev/mmcblk0 3
# CHANGED: partition=3 start=1593344 old: size=3516416 end=5109760 new: size=120041439 end=121634783

fdisk -l
# [root@localhost ~]# fdisk -l
# ...
#         Device Boot      Start         End      Blocks   Id  System
# /dev/mmcblk0p1   *        8192      593919      292864    c  W95 FAT32 (LBA)
# /dev/mmcblk0p2          593920     1593343      499712   82  Linux swap / Solaris
# /dev/mmcblk0p3         1593344   121634782    60020719+  83  Linux

resize2fs /dev/mmcblk0p3 
# [root@localhost ~]# resize2fs /dev/mmcblk0p3 
# resize2fs 1.42.9 (28-Dec-2013)
# Filesystem at /dev/mmcblk0p3 is mounted on /; on-line resizing required
# old_desc_blocks = 1, new_desc_blocks = 8
# The filesystem on /dev/mmcblk0p3 is now 15005179 blocks long.

df -h /
# [root@localhost ~]# df -h /
# Filesystem      Size  Used Avail Use% Mounted on
# /dev/root        57G  1.7G   55G   3% /