#!/bin/bash
# Atualização e Instalação Apache
apt update && apt -y install php php-apcu php-intl php-mbstring php-xml php-mysql apache2

# Downloade Mediawiki e extração
wget 'https://releases.wikimedia.org/mediawiki/1.34/mediawiki-1.34.2.tar.gz' && mkdir /var/www/mediawiki/ && tar xvzf mediawiki-1.34.2.tar.gz && mv mediawiki-1.34.2/* /var/www/mediawiki/

#Configuração do sites-available/000-default.conf
sed -i 's/www\/html/www\/mediawiki/g' /etc/apache2/sites-available/000-default.conf

#Instalação Mediawiki
/usr/bin/php /var/www/mediawiki/maintenance/install.php --dbname=wikidb --dbserver=192.168.1.44 --installdbuser=wikiuser --installdbpass=mediawiki123 --dbuser=wikiuser --dbpass=mediawiki123 --server="http://test-lb-165636297.sa-east-1.elb.amazonaws.com" --scriptpath= --lang=pt --pass=mediawiki123 "Challenger-SRE" "alexandre.souza"

#Restart do apache2
systemctl restart apache2