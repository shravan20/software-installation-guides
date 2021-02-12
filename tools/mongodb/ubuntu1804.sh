echo "Installing the MongoDB"
sudo apt install -y mongodb

echo "Checking Mongo Service and DB"
sudo systemctl status mongodb

echo 'Starting the Mongo Service'
sudo systemctl start mongod

echo "Checking Mongo Service and DB"
sudo systemctl status mongodb
