FROM python:3

# Instalação da biblioteca "requests"
RUN pip install --no-cache-dir requests

# Criação do script.py
RUN echo "import requests\nurl = "'"http://mediawiki-challenger-1182272360.sa-east-1.elb.amazonaws.com/api.php?action=query&list=allpages&format=json"'"\npayload  = {}\nheaders= {}\nresponse = requests.request("'"GET"'", url, headers=headers, data = payload)\nprint(response.text.encode('"'utf8'"'))" > script.py

#Execução do script
CMD python3 script.py