#!/bin/bash


# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
	echo ""Homebrew is not installed. Installing..."
	/bin/bash -c ""$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

fi

#install Nginx using Homebrew
brew install nginx


#Start Nginx as a service
brew services start nginx


echo "Nginx started. You can access it at http://localhost:8080/"
