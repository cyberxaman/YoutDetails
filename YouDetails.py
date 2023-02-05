import requests
from bs4 import BeautifulSoup


url = input("Enter the video URL: ")

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