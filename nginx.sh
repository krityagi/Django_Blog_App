#!/bin/bash

sudo cp -rf app.conf /etc/nginx/sites-available/app
chmod 710 /root/.jenkins/workspace/django-app/
sudo ln -s /etc/nginx/sites-available/app /etc/nginx/sites-enabled

sudo nginx -t 

sudo systemctl start nginx
sudo systemctl enable nginx

echo "nginx has been started"

sudo systemctl status nginx