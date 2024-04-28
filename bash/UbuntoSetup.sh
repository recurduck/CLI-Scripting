#! /bin/bash
sudo apt update && sudo apt upgrade
sudo apt install unattended-upgrades
sudo dpkg-reconfigure --priority=low unattended-upgrades

sudo adduser username
sudo usermod -aG sudo username

sudo apt install ufw
sudo ufw enable
sudo ufw default deny incoming
sudo ufw default allow outgoing

ssh-keygen -t rsa -b 4096
ssh-copy-id username@remote_host
sudo nano /etc/ssh/sshd_config
#PermitRootLogin no
#AllowUsers username
#Port x
#MaxSessions 2
#MaxAuthTries 3
#LogLevel VERBOSE

sudo systemctl restart sshd

sudo apt install fail2ban
sudo apt install nmap
sudo apt install rsync
sudo apt install auditd

sudo apt install cryptsetup
sudo cryptsetup luksFormat /dev/sdxX
sudo cryptsetup luksOpen /dev/sdxX my_encrypted_partition

#opt
sudo apt install apparmor
sudo aa-enforce /etc/apparmor.d/*

sudo systemctl disable servicename
sudo apt dist-upgrade






