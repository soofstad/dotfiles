#! /bin/sh
# Install some commonly used programs

if [ ! $(id -u) -eq '0' ]; then
	echo "Please run as root..."
	echo "exiting"
	exit
fi

APPS="git terminator fish vim python python3 keepass2 python-pip curl"
apt update
apt upgrade

if [ ! -z $(which yum) ]; then
    yum install $APPS
elif [ ! -z $(which apt) ]; then
    apt install $APPS unity-tweak-tool compizconfig-settings-manager compiz-plugins
else
    echo "Could not find a usable package manager..."
    echo "No packages installed...exiting"
    exit 1
fi

# Interactive PDK
echo "Do you want to download puppet development kit? y/n:"
read answer
if [ $answer = 'y' ]; then
	apt install libreadline6
	wget -O pdk-package.deb "https://pm.puppetlabs.com/cgi-bin/pdk_download.cgi?dist=ubuntu&rel=16.04&arch=amd64&ver=latest"
	dpkg -i pdk-package.deb
else
	echo "Not installing PDK..."
fi


# Interactive PyCharm
echo "Do you want to install PyCharm-CE? y/n:"
read answer
if [ $answer = y ]; then
	echo "Installing PyCharm-CE"
	snap install pycharm-community --classic
else
	echo "Not installing PyCharm..."
fi


# Interactive Docker-CE
echo "Do you want to install Docker-CE and Compose? y/n"
read answer
if [ $answer = y ]; then
        echo "Installing Docker-CE"
	wget -O docker-ce.deb "https://download.docker.com/linux/ubuntu/dists/yakkety/pool/stable/amd64/docker-ce_17.06.0~ce-0~ubuntu_amd64.deb"
	dpkg -i docker-ce.deb
echo "Installing Compose"
	curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-Linux-x86_64 -o /usr/local/bin/docker-compose
	chmod +x /usr/local/bin/docker-compose
else
	echo "Not installing Docker..."
fi

exit 0
