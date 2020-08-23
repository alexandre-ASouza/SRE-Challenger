import requests

url = "http://mediawiki-challenger-1182272360.sa-east-1.elb.amazonaws.com/api.php?action=query&list=allpages&format=json"

payload  = {}
headers= {}

response = requests.request("GET", url, headers=headers, data = payload)

print(response.text.encode('utf8'))