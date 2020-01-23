!/bin/sh
alias python=python3
apt -y update
apt-get -y install git
apt-get -y install build-essential
apt-get -y install docker
apt-get -y install docker.io
apt-get -y install docker-compose
apt-get -y install supervisor
apt-get -y install python3-pip
git clone https://github.com/kemalcanbora/ba_bigdata_docker
cd ba_bigdata_docker
docker-compose up -d
cd
mv /home/ba/ba_bigdata_docker/*.conf /etc/supervisor/conf.d
supervisorctl reread
supervisorctl update
supervisorctl reread