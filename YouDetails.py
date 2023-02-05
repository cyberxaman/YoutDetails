import requests
from bs4 import BeautifulSoup
import os

# clear
if os.name == 'nt':
    os.system('cls')
else:
    os.system('clear')


def banner():
    print("\033[32;1m")
    print("""
_____.___.           ________          __         .__.__           
\__  |   | ____  __ _\______ \   _____/  |______  |__|  |   ______ 
 /   |   |/  _ \|  |  \    |  \_/ __ \   __\__  \ |  |  |  /  ___/ 
 \____   (  <_> )  |  /    `   \  ___/|  |  / __ \|  |  |__\___ \  
 / ______|\____/|____/_______  /\___  >__| (____  /__|____/____  > 
 \/                          \/     \/          \/             \/  
                                                                   
""")
    print("\033[33;1m MADE BY CYBERXEAL")

banner()

url = input("\nEnter the video URL: ")

html_content = requests.get(url).text
soup = BeautifulSoup(html_content, "html.parser")

# Get the video title
title = soup.find("meta", attrs={"property": "og:title"})["content"]

# Get the video description
description = soup.find("meta", attrs={"name": "description"})["content"]

# Get the video thumbnail URL
thumbnail_url = soup.find("meta", attrs={"property": "og:image"})["content"]

# Get the video tags
tags = soup.find("meta", attrs={"property": "og:video:tag"})["content"].split(',')

def get_video_tags(soup):
  video_tags = []
  for meta in soup.find_all("meta"):
    if "og:video:tag" in meta.get("property", ""):
      video_tags.extend(meta.get("content", "").split(","))
  return video_tags

# Get the video tags
tags = get_video_tags(soup)

print("\nTitle: ", title)
print("\nDescription: ", description)
print("\nThumbnail URL: ", thumbnail_url)
print("\nTags: ", tags)
