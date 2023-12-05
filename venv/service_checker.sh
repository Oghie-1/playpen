#!/bin/bash

#checks the nginx services to make sure it is running as it should
brew services info nginx && echo "service check sucessful!"


#validate the syntanx of nginx config file
nginx -t

#Confim if Nginx is listening on port 8080
sudo lsof -i :8080
