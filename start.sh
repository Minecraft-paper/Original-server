#!/bin/bash

# Download PaperMC server if not exists
if [ ! -f server.jar ]; then
  echo "Downloading latest PaperMC..."
  curl -o server.jar https://api.papermc.io/v2/projects/paper/versions/1.20.6/builds/292/downloads/paper-1.20.6-292.jar
fi

# Run server
java -Xmx16G -Xms1G -jar server.jar nogui
