echo "Installing and configuring Redis"
echo "Update your local apt package cache"
sudo sudo apt -y update

echo "Installing Redis"
sudo apt install redis-server

echo "Updating configuring"
sudo sed -i 's/^supervised no.*/supervised systemd/' /etc/redis/redis.conf

echo "Restarting the Redis Service"
sudo systemctl restart redis

echo "Checking Redis service"
sudo systemctl status redis

