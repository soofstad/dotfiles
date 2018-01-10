#! /bin/sh
# Install some commonly used programs

if [ ! $(id -u) -eq '0' ]; then
	echo "Please run as root..."
	echo "exiting"
	exit
fi

APPS="git terminator fish vim python python3 keepass2 python-pip"
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
echo "Do you want to install Docker-CE? y/n"
read answer
if [ $answer = y ]; then
        echo "Installing Docker-CE"
        apt install \
	apt-transport-https \
	ca-certificates \
	curl \
	software-properties-common

	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

	add-apt-repository \
	"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
	$(lsb_release -cs) \
	stable"

	apt update
	apt install docker-ce
else
	echo "Not installing Docker..."
fi

exit 0
