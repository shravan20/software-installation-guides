echo " Setting up the repository "

echo "Install the public key for the repository (if not done previously)"
sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add

echo "Create the repository configuration file"
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'

echo  "Install pgAdmin"

echo "Install for both desktop and web modes"

sudo apt install pgadmin4

echo "Install for desktop mode only"
# sudo apt install pgadmin4-desktop

echo "Install for web mode only" 
# sudo apt install pgadmin4-web 

echo "Configure the webserver, if you installed pgadmin4-web"
# sudo /usr/pgadmin4/bin/setup-web.sh