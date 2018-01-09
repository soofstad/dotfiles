#! /bin/bash
# Statoil spesific setup
if [ ! $(id -u) -eq '0' ]; then
	echo "Please run as root..."
	echo "Exiting"
	exit
fi


cat << EOF > /etc/apt/apt.conf 
Acquire::http::Proxy "http://www-proxy.statoil.no:80";
Acquire::https::Proxy "http://www-proxy.statoil.no:80";
EOF

git clone https://git.statoil.no/sdstrh/linux.git
cd linux/proxy-settings/
./environment-proxy.sh set
./statoil-dns.sh statoil
./proxy.sh set-entire

cd ..
./update-statoil-ca-certificates.sh 
./install-certs-nssdb.sh

xdg-open "http://www.displaylink.com/downloads/file?id=1087"
