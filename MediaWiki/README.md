============================================================
# WikiVPC - 192.168.1.0/26

<p>-  mediawiki_InternetGateway</p>

## -- AppSubnet1 (192.168.1.0/28 255.255.255.240) - sa-east-1a

<p>Nat-wikidb-sa-east-1c - 192.168.1.4</p>

## -- AppSubnet2 (192.168.1.16/28 255.255.255.240) - sa-east-1c

<p>Nat-wikidb-sa-east-1a - 192.168.1.29</p>

## -- DbSubnet1 (192.168.1.32/28 255.255.255.240) - sa-east-1c

<p>LB-DB-Wiki - 192.168.1.44</p>
<p>DbWiki-Node1 - 192.168.1.40 -> mysqld_bootstrap</p>
<p>DbWiki-Node3 - 192.168.1.36</p>

## -- DbSubnet2 (192.168.1.48/28 255.255.255.240) - sa-east-1a

<p>LB-DB-Wiki - 192.168.1.54</p>
<p>DbWiki-Node2 - 192.168.1.52</p>

============================================================

![alt text](https://github.com/alexandre-ASouza/SRE-Challenger/blob/master/MediaWiki/Database%20Layer%20-%20Config/WikiVPC.png)