import requests

url = "http://mediawiki-challenger-1182272360.sa-east-1.elb.amazonaws.com/api.php?action=query&list=allpages&format=json"

headers= {}

response = requests.request("GET", url, headers=headers)

print(response.text.encode('utf8'))
