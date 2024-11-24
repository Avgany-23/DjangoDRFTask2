#!/bin/bash


apt install -y git
cd /root/project
git pull origin main
source .venv/bin/activate
pip install -r requirements.txt
yes yes | python manage.py collectstatic
python manage.py migrate
sudo systemctl restart gunicorn

