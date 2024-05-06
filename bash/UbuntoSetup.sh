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
#LogLevel VERBOSE
#PermitRootLogin no
#HostbasedAuthentication no
#PermitEmptyPasswords no
#ChallengeResponseAuthentication yes	
#UsePAM yes	
#X11Forwarding no	
#PrintMotd no
#ClientAliveInterval 600
#ClientAliveCountMax 0
#Protocol 2
#AllowUsers username
#AuthenticationMethods publickey,keyboard-interactive
#Port x
#PasswordAuthentication no
#MaxSessions 2
#MaxAuthTries 3

sudo systemctl restart sshd

#Hardening
sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y
sudo apt install fail2ban
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.conf.bak
nano /etc/fail2ban/jail.conf
# [sshd]
## enabled = true
## bantime = 4w
## maxretry = 3

sudo apt install nmap
sudo apt install rsync
sudo apt install auditd
sudo apt install tightvncserver
sudo apt install openvpn
sudo apt install tree

sudo apt install cryptsetup
sudo cryptsetup luksFormat /dev/sdxX
sudo cryptsetup luksOpen /dev/sdxX my_encrypted_partition

#opt
sudo apt install apparmor
sudo aa-enforce /etc/apparmor.d/*

sudo systemctl disable servicename
sudo apt dist-upgrade

#Monitoring
echo -e "netcat\nncat\nnmap\nwireshark\ntcpdump\nhashcat\nffuf\ngobuster\nhydra\nzaproxy\nproxychains\nsqlmap\nradare2\nmetasploit-framework\npython2.7\npython3\nspiderfoot\ntheharvester\nremmina\nxfreerdp\nrdesktop\ncrackmapexec\nexiftool\ncurl\nseclists\ntestssl.sh\ngit\nvim\ntmux" > tools.list
sudo apt install $(cat tools.list | tr "\n" " ") -y

#Customize Bash Prompt
sudo cp .bashrc .bashrc.bak






