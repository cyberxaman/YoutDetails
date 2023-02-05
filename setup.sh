#!/usr/bin/bash
# made by cyberxeal

# install all the requirements 
requirement(){
    apt update && apt upgrade
    pkg install python
    pkg install python3
    pip3 install requests
    pip3 install beautifulsoup4
}

requirements(){
    sudo apt-get install python
    sudo apt install python3
    pip3 install requests
    pip3 install beautifulsoup4
}

install_windows(){
choco install python
choco install python3
pip3 install requests
pip3 install beautifulsoup4
}

# make a banner for the this tool 
banner(){
    echo -e "\e[32;1m"
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

if [ -e "/data/data/com.termux/files/home" ]; then
requirement
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
install_windows
else
   echo "please install manually"
fi

banner
