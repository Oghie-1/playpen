#!/bin/bash


# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
	echo "Homebrew is not installed. Installing..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

fi

# check if Nginx is installed
if ! command -v nginx &> /dev/null; then
	echo "Nginx is not installed. Installing..."
	
	#install Nginx using Homebrew
	brew install nginx && echo "Nginx installed.. preparing to run!!"
fi

#Start Nginx as a service
brew services start nginx


echo "Nginx started. You can access it at http://localhost:8080/"
