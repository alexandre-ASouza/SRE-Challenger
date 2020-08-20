============================================================
### WikiVPC - 192.168.1.0/26 ###
* mediawiki_InternetGateway

-- AppSubnet1 (192.168.1.0/28 255.255.255.240) - sa-east-1a
Nat-wikidb-sa-east-1c - 192.168.1.4

-- AppSubnet2 (192.168.1.16/28 255.255.255.240) - sa-east-1c
Nat-wikidb-sa-east-1a - 192.168.1.29

-- DbSubnet1 (192.168.1.32/28 255.255.255.240) - sa-east-1c

#LB-DB-Wiki - 192.168.1.44
#DbWiki-Node1 - 192.168.1.40 -> mysqld_bootstrap
#DbWiki-Node3 - 192.168.1.36

-- DbSubnet2 (192.168.1.48/28 255.255.255.240) - sa-east-1a

#LB-DB-Wiki - 192.168.1.54
#DbWiki-Node2 - 192.168.1.52
