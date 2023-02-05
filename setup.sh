#!/usr/bin/bash
# made by cyberxeal
# install all the requirememt 
requirement(){
	apt update && apt upgrade
	apt-get install python 
	pip install requests
    pip install beautifulsoup4
}
requirement

# make a banner for the this tool 
banner(){
    echo -e  "\e[32;1m"
    echo '
_____.___.           ________          __         .__.__           
\__  |   | ____  __ _\______ \   _____/  |______  |__|  |   ______ 
 /   |   |/  _ \|  |  \    |  \_/ __ \   __\__  \ |  |  |  /  ___/ 
 \____   (  <_> )  |  /    `   \  ___/|  |  / __ \|  |  |__\___ \  
 / ______|\____/|____/_______  /\___  >__| (____  /__|____/____  > 
 \/                          \/     \/          \/             \/  
                                                                   
'
echo -e "\e[33;1m MADE BY CYBERXEAL"
}


if [ -d "/data/data/com.termux" ]; then
  echo "Termux is installed"
elif [ -d "/usr/bin/kali-linux-default" ]; then
  echo "Kali Linux is installed"
else
  echo "Neither Termux nor Kali Linux is installed"
fi
banner
#now uncomment the line 

