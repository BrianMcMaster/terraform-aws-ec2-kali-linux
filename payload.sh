#! /bin/bash

apt-get update

# install pip
apt-get install python3-pip -y

# install docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
echo 'deb [arch=amd64] https://download.docker.com/linux/debian buster stable' | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt install -y docker.io
sudo systemctl enable docker --now
sudo usermod -aG docker kali

# install scoutsuite
pip install ScoutSuite

# install pacu
git clone https://github.com/RhinoSecurityLabs/pacu && mv ./pacu/ /home/kali/
pip install -r /home/kali/pacu/requirements.txt

# install cloudsplaining
pip3 install cloudsplaining

## install rdp
# sudo apt-get install xrdp
# sudo systemctl start xrdp
# sudo systemctl start xrdp-sesman
# sudo systemctl enable xrdp
# sudo systemctl enable xrdp-sesman

# enable ssh
sudo systemctl start ssh
sudo systemctl enable ssh
