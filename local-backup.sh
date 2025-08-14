git clone https://github.com/banago/simple-php-website.git
cd simple-php-website/
ls -l 
sudo apt-get install rsync   
mkdir -p Documents/backup
# Copies only the contents of folder into dest.
rsync -zvr simple-php-website/ Documents/backup/
# Copies the folder itself (with its contents) into dest. 
sync -zvr simple-php-website  Documents/backup/
