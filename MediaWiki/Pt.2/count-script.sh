#!/bin/bash
curl -s "http://mediawiki-challenger-1182272360.sa-east-1.elb.amazonaws.com/api.php?action=query&list=allpages&format=json" -o count-pages.txt
echo " "
tr "},{" "\n" < count-pages.txt |sed 's/"title"/"Título da Página"/g' |grep "Título*"
tr "},{" "\n" < count-pages.txt |grep title|wc -l