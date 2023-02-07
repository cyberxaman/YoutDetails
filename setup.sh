#!/usr/bin/env bash
# Made by cyberxeal

# Function to install the requirements
requirement(){
    if command -v apt-get &> /dev/null; then
        apt-get install python -y
        apt-get install python3 -y
    elif command -v yum &> /dev/null; then
        sudo yum install python -y
        sudo yum install python3 -y
    elif command -v pacman &> /dev/null; then
        sudo pacman -S python -y
        sudo pacman -S python3 -y
    elif [ -e "/data/data/com.termux/files/home" ]; then
        pkg install python -y
        pkg install python3 -y
    else
        echo "Unknown package manager. Please install Python manually."
    fi
    pip3 install requests
    pip3 install beautifulsoup4
}

# Function to install the requirements for Windows
install_windows(){
    if command -v choco &> /dev/null; then
        choco install python
        choco install python3
    elif command -v scoop &> /dev/null; then
        scoop install python
        scoop install python3
    else
        echo "Please download and install Python from the official website."
    fi
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
else
  requirement
fi

banner
