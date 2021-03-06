#!/bin/sh
sudo apt-get -y update && sudo apt-get -y upgrade &&
sudo apt-get install -y linux-image-extra-virtual &&
sudo apt-get -y install \
  apt-transport-https \
  ca-certificates \
  curl \
  software-properties-common &&
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&
sudo apt-key fingerprint 0EBFCD88 &&
sudo add-apt-repository -y \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" &&
sudo apt-get -y update &&
sudo apt-get -y install docker-ce &&
sudo docker run hello-world &&
sudo usermod -a -G docker ubuntu &&
sudo docker run -d -p 80:3000 -v /path/to/my/downloads:/downloads jpillora/cloud-torrent &&
echo "Installation Complete.
Use http://your-ip-address to connect to server.
Use Cloudflare Flexible SSL for https.
Thank you for installing Cloud Torrent."
