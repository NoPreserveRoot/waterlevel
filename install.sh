# Check if Docker is installed
if [ -f /usr/bin/docker ]; then
	mv ./waterlevel /usr/bin/
	echo "alias wl=\"waterlevel\"" >> /etc/profile
else
	echo "Docker is not installed."
fi
