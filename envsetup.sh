#!/bin/bash
if [ -d "venv" ]
then
    echo "Python virtual env exists"
else
    python3 -m venv venv
fi

echo $PWD
source venv/Scripts/activate
python3 /var/lib/jenkins/workspace/Django_app/blogproj/manage.py runserver

pip install -r requirements.txt

if [ -d "logs" ]
then
    echo "Log folder exists"
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs
echo "setup completed"