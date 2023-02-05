#!/usr/bin/env bash
# Made by cyberxeal

# Function to install the requirements
requirement(){
    apt update && apt upgrade -y
    apt install python -y
    apt install python3 -y
    pip3 install requests
    pip3 install beautifulsoup4
}

# Function to install the requirements for Kali Linux
install_kali(){
    sudo apt update && apt upgrade -y
    sudo apt install python -y
    sudo apt install python3 -y
    pip3 install requests
    pip3 install beautifulsoup4
}

# Function to install the requirements for Windows
install_windows(){
    choco install python
    choco install python3
    pip3 install requests
    pip3 install beautifulsoup4
}

# Function to display a banner for the tool
banner(){
    echo -e "\033[32;1m"
    echo '
_____.___.           ________          __         .__.__           
\__  |   | ____  __ _\______ \   _____/  |______  |__|  |   ______ 
 /   |   |/  _ \|  |  \    |  \_/ __ \   __\__  \ |  |  |  /  ___/ 
 \____   (  <_> )  |  /    `   \  ___/|  |  / __ \|  |  |__\___ \  
 / ______|\____/|____/_______  /\___  >__| (____  /__|____/____  > 
 \/                          \/     \/          \/             \/  
                                                                   
'
    echo -e "\033[33;1m MADE BY CYBERXEAL"
}

# Check the system the script is being run on
if [ -e "/data/data/com.termux/files/home" ]; then
  requirement
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
  install_windows
elif [ -f "/etc/os-release" ]; then
  source /etc/os-release
  if [ "$ID" == "kali" ]; then
    install_kali
  else
    echo "Please install the requirements manually"
  fi
else
  echo "Unknown system. Please install the requirements manually"
fi

banner
