import requests
from bs4 import BeautifulSoup

urls = (
    "https://packages.ubuntu.com/bionic/games/",
    "https://packages.ubuntu.com/bionic/hamradio/",
    "https://packages.ubuntu.com/bionic/video/",
    "https://packages.ubuntu.com/bionic/sound/"
)

command_prefix = "sudo apt-get remove -y"



for url in urls:
    request = requests.get(url)
    html = request.text
    soup = BeautifulSoup(html,'html.parser')
    for a in soup.find_all('a'):
        match = a.get("id")
        if match != None:
            command_prefix += " "+match

hacking_tools = "wireshark* *nmap* *medusa* john* *sqlmap* hydra* zenmap ophcrack* tcpdump* kismet* snort* fwsnort *nessus* netcat* aircrack-ng nikto wifite yersinia hashcat* *macchanger* pixiewps bbqsql proxychains* whatweb dirb traceroute *httrack* *openvas* 4g8 acccheck airgraph-ng bittorrent* bittornado* bluemon btscanner buildtorrent brutespray dsniff ettercap* hunt nast netsniff-ng python-scapy sipgrep sniffit tcpick tcpreplay tcpslice tcptrace tcptraceroute tcpxtract irpas mdk3 reaver slowhttptest ssldump sslstrip thc-ipv6 bro* darkstat dnstop flowscan nfstrace* nstreams ntopng* ostinato softflowd tshark msfdb*"
script = open("unwanted.sh","w")
script.write(command_prefix+" "+hacking_tools+"\n")
script.close()
