#!/bin/bash
# Right directory?
echo -n "Are you in the directory of the external harddrive? [y|n] "
read res
if [[ $res =~ ^[Nn]$ ]]; then
	exit 1
fi

# Install Node.js
curl -sLS https://apt.adafruit.com/add | sudo bash &&
sudo apt-get install -y node npm &&
npm install pm2 -g &&

# Clone ka-lite and index-server
git clone https://github.com/learningequality/ka-lite.git &&
git clone https://github.com/FabulinusFoundation/fabulinus-index-server.git &&

exit
