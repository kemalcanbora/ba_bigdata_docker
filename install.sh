!/bin/sh
alias python=python3
apt -y update
apt-get -y install build-essential
apt-get -y apt-get install docker
apt-get -y apt-get install docker-compose
apt-get -y install supervisor
apt -y install python3-pip
git clone https://github.com/kemalcanbora/ba_bigdata_docker
cd ba_bigdata_docker
docker-compose up -d
cd
mv /home/ba_bigdata_docker/*.conf /etc/supervisor/conf.d
supervisorctl reread
supervisorctl update
supervisorctl reread
