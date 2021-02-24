echo "Setting up MongoDB on the system"

echo "[mongodb-org-4.2.1]" >> /etc/yum.repos.d/mongodb-org-3.0.repo 
echo "name=MongoDB Repository" >> /etc/yum.repos.d/mongodb-org-3.0.repo
echo "baseurl=https://repo.mongodb.org/yum/amazon/2013.03/mongodb-org/4.2.1/x86_64/" >> /etc/yum.repos.d/mongodb-org-3.0.repo
echo "gpgcheck=1" >> /etc/yum.repos.d/mongodb-org-3.0.repo
echo "enabled=1" >> /etc/yum.repos.d/mongodb-org-3.0.repo

echo "Installing MongoDB"
sudo yum install -y mongodb-org

echo "starting MongoDB Service" 
sudo service mongod start

echo "starting MongoDB on Reboot"
sudo chkconfig mongod on

echo "Checking status of the MongoDB service"
sudo service mongod status

