#!/bin/bash
if [ -d "env" ]
then
    echo "Python virtual env exists"
else
    sudo apt update
    python -m venv env
    pip install self==2020.12.3
fi

echo $PWD
source env/bin/activate

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