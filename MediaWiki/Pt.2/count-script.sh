#!/bin/bash
curl -s "http://mediawiki-challenger-1182272360.sa-east-1.elb.amazonaws.com/api.php?action=query&list=allpages&format=json" -o cont-pages.txt
echo " "
tr "},{" "\n" < cont-pages.txt |sed 's/"title"/"Título da Página"/g' |grep "Título*"
tr "},{" "\n" < cont-pages.txt |grep title|wc -l