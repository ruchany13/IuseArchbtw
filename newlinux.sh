#Docker

sudo apt-get update

sudo apt-get -y install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
    
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

sudo apt-get update

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo docker run hello-world

# Docker Centos
sudo yum check-update

sudo yum install -y yum-utils device-mapper-persistent-data lvm2 #Install dependies

sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo #Add docker repository to Centos

sudo yum install docker #Install Docker with Yum

sudo systemctl start docker #Start Docker
sudo systemctl enable docker
sudo systemctl status docker #!! Check the enable system.

#Snap Store for CentOS.7
sudo yum install -y epel-release
sudo yum install -y snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap



#Install zsh


#OhMyZsh

#Nvim

#Doomvim

#Somethings good
sudo apt-get install neofetch \
cmatrix

neofetch

