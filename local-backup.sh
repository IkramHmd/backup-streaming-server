git clone https://github.com/banago/simple-php-website.git
cd simple-php-website/
ls -l 
sudo apt-get install rsync   
mkdir -p Documents/backup
# Copies only the contents of folder into dest.
rsync -zvr simple-php-website/ Documents/backup/
# Copies the folder itself (with its contents) into dest. 
sync -zvr simple-php-website  Documents/backup/
#archive mode the time stamp  
 rsync -avz simple-php-website/ Documents/backup/
 # change the ownership 
 # changes who owns the specified file (functions.php) , (user+group , sudo > administartor  )
 sudo chown ikram:ikram simple-php-website/functions.php
 # archive,verbose,compression of data 
 sudo rsync -avz simple-php-website/ Documents/backup/ 
 #USING RSYNC OVER THE NETWORK
 ip address 
 # .. Ethernet interface.
mkdir Desktop/backup 
#in Oracle VM ubuntu 
# create directory 
mkdir Desktop/backup 
# in ubuntu log in into the remote machine  
ssh ikram2003@192.168.x.x 
#IN WSL UBUNTU  
# transfer files from local system to remote one 
rsync -avz simple-php-website/ ikram2003@192.168.x.x:~/Desktop/backup/
# VM 
cd Desktop /
ls -l backup 
# change in one of files 
cd simple-php-website 
vim config.php
cd ..
rsync -avz simple-php-website/ ikram2003@192.168.x.x:~/Desktop/backup/
# only config.php is uploaded 
# another case where you deleted file from your local machine reverse
rsync -avz  ikram2003@192.168.x.x:~/Desktop/backup/ simple-php-website/
# ADVANCED SSH OPTIONS WITH  
# generate public-private (pair) key 
ssh-keygen 
ls -l .ssh/
# private & public keys 
ssh-copy-id ikram2003@192.168.x.x
#in remote 
cat .ssh/authorized_keys
# content of this file >> crypto looking this text is exactly 
# i have in local one .ssh/id_ed25519.pub
ssh ikram2003@192.168.x.x
# i'll be insite remote machine without passwd 
rsync -avz simple-php-website/ ikram2003@192.168.x.x:~/Desktop/backup/
# no asking passwork 
crontab -e 
# 0 0 * * * rsync -avz /root/dell/simple-php-website/ ikram2003@192.168.x.x:~/Desktop/backup/ 
# this preview command will run every day at 00:00   
# want to remote machine over SSH without 22 default port 
#in reomte 
sudo vim /etc/ssh/sshd_config
# see 22 port then change it for security 
# reflect new changes 
sudo services sshd restart 
ssh local_add
# connection refused 
ssh -p 22222 local_add
# be sure open firewall at remote host 
#in local
rsync -avz -e "ssh -p 22222"simple-php-website/ ikram2003@192.168.x.x:~/Desktop/backup/
# -e allow arbitrary SSH commands 
# ADVENCED RSYNC BACKUP OTIONS 
cd simple-php-website
dd if=/dev/zero of=data.bin bs=102400 count=10240
cd ..
rsync -avz --progress -e "ssh -p 22" simple-php-website/ ikram2003@192.168.9.3:~/Desktop/backup/
rm simple-php-website/data.bin 
# it will removed from local not at the remote 
# delete in the remote from local 
rsync -avz --delete -e "ssh -p 22" simple-php-website/ ikram2003@192.168.9.3:~/Desktop/backup/
#update only the files that exist on both the source and the destination
rsync -avz --existing -e "ssh -p 22" simple-php-website/ ikram2003@192.168.9.3:~/Desktop/backup/
# just interested in showing the diff between the source and the destination 
rsync -avzi -e "ssh -p 22" simple-php-website/ ikram2003@192.168.9.3:~/Desktop/backup/
cd simple-php-website 
mkdir images 
cd images/
ls -ltr 
touch file{1..10}.jpg

