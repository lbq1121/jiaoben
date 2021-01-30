#!/bin/bash
#username=${1:="muziriji"}
#pubkey=${2:="ssh-xxxxx"}
username="muziriji"
pubkey="ssh-xxxxx"
#yum install -y sudo
#apt-get install -y sudo
useradd ${username}
mkdir -p /home/${username}/.ssh/
chmod 700 /home/${username}/.ssh/
echo $pubkey > /home/${username}/.ssh/authorized_keys
chmod 600 /home/${username}/.ssh/authorized_keys
chown -R ${username} /home/${username}/.ssh/
#sudo配置
chmod u+w /etc/sudoers
echo "${username} ALL=(ALL) ALL" >> /etc/sudoers
#echo "${username} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers #如果用这个新用户用sudo执行命令无需确认ROOT密码
chmod u-w /etc/sudoers
#sshd配置
sshd_file="/etc/ssh/sshd_config"
cp -n $sshd_file /etc/ssh/sshd_config.bak
sed -i "s|#?RSAAuthentication.*|RSAAuthentication yes|" $sshd_file
sed -i "s|#?PubkeyAuthentication.*|PubkeyAuthentication yes|" $sshd_file
sed -i "s|#AuthorizedKeysFile .ssh/authorized_keys|AuthorizedKeysFile .ssh/authorized_keys|" $sshd_file
#去掉下面两行的#号会禁用密码和ROOT用户登录
#sed -i "s|#?PasswordAuthentication.*|PasswordAuthentication no| $sshd_file
#sed -i "s|#?PermitRootLogin.*|PermitRootLogin no| $sshd_file
systemctl restart sshd;systemctl restart ssh;service sshd restart;service ssh restart