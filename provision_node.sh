apt-get update 
apt-get upgrade -y
apt-get install nodejs npm git mongodb -y
service mongodb start
mkdir /var/www
cd /var/www
if [ ! -d /var/www/devops_test_site ]; then
	git clone https://github.com/wouterpeetermans/devops_test_site.git
fi
cd devops_test_site
git pull origin master
npm install
nodejs server.js 
