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
 # 172.28.39.254 .. Ethernet interface.
mkdir Desktop/backup
# intalled centOS machine > the distination 
#in centOS8 
# create directory 
mkdir Desktop/backup 
# in ubuntu log in into the remote machine  
ssh 172.28.39.254 
#IN CENTOS8 
# create a new user on CentOS 8 that you will use for SSH and file transfer.
adduser ikram89
yum install -y passwd
yum install -y shadow-utils
echo "ikram89:***********" | chpasswd 
#IN UBUNTO 
# transfer files from local system to remote one 
rsync -avz simple-php-website/ 172.28.39.254:~/Desktop/backup/
