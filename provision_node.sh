apt-get update 
#apt-get upgrade -y
apt-get install nodejs npm git mongodb -y
service mongodb start
## reroute traffic to port 80 to port 3000
iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 3000

mkdir /var/www
cd /var/www
if [ ! -d /var/www/devops_test_site ]; then
	git clone https://github.com/wouterpeetermans/devops_test_site.git
fi
cd devops_test_site
git pull origin master
npm install
runuser -l ubuntu -c '/./vagrant/nonRoot.sh'
