#!/usr/bin/bash
# made by cyberxeal
# install all the requirememt 
requirement(){
	apt update && apt upgrade
	apt-get install python3
	pip3 install requests
    pip3 install beautifulsoup4
}
requirement

requirements(){
    sudo apt update
    sudo apt-get install python3
    pip3 install requests
    pip3 install beautifulsoup4
}
requirements

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


if [ -e "/data/data/com.termux/files/usr/bin/apt" ]; then
requirement
else
requirements
fi
banner
#now uncomment the line 

