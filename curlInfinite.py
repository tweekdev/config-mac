import requests

url = "http://localhost/flag"

while True:
    response = requests.get(url)
    if "HTB{" in response.text:
        print(response.text)
        break