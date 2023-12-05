#!/bin/bash

#update pip
pip3 install --upgrade pip

#check if Flask is installed 
if ! command -v flask &>/dev/null; then
	echo "Flask is not installed. Installing Flask!!! "
	
	#install Flask
	pip3 install Flask
fi

#start python app in the background
python3 app.py &


#run nginx_start_script
./start_nginx.sh


# Copy Nginx config file
sudo cp nginx.conf etc/nginx/


#Restart Nginx
brew services restart nginx

#wait for background jobs to finish
wait
