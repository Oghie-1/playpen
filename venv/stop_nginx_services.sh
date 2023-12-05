#!/bin/bash

#function to run at exit
function exit_handler() {
	echo "stopping flask app gracefully"

	# find and send a sigterm signal to the python process
	pkill -f "python3 app.py" && echo "process terminated succesfully"
}

#register the exit handler
trap exit_handler EXIT

#stop all nginx_service
brew services stop nginx
