#!/bin/bash

sudo cp -rf app.conf /etc/nginx/conf.d
chmod 710 /root/.jenkins/workspace/django-app/

sudo nginx -t 

sudo systemctl start nginx
sudo systemctl enable nginx

echo "nginx has been started"

sudo systemctl status nginx