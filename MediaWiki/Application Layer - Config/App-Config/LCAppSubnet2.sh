#!/bin/bash
apt update
apt -y install php php-apcu php-intl php-mbstring php-xml php-mysql apache2
wget 'https://releases.wikimedia.org/mediawiki/1.34/mediawiki-1.34.2.tar.gz'
mkdir /var/www/mediawiki/
tar xvzf mediawiki-1.34.2.tar.gz
mv mediawiki-1.34.2/* /var/www/mediawiki/
sed -i 's/www\/html/www\/mediawiki/g' /etc/apache2/sites-available/000-default.conf
/usr/bin/php /var/www/mediawiki/maintenance/install.php --dbname=wikidb --dbserver=192.168.1.54 --installdbuser=wikiuser --installdbpass=mediawiki123 --dbuser=wikiuser --dbpass=mediawiki123 --server="http://mediawiki-challenger-1182272360.sa-east-1.elb.amazonaws.com" --scriptpath= --lang=pt --pass=mediawiki123 "Challenger-SRE" "alexandre.souza"
wget https://icon-icons.com/icons2/699/PNG/128/uol_icon-icons.com_61638.png -O wiki.png
mv wiki.png /var/www/mediawiki/resources/assets/
systemctl restart apache2