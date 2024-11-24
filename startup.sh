#!/bin/bash


cd /root/project
git pull origin main
source .venv/bin/activate
pip install -r requirements.txt
python manage.py collectstatic
python manage.py migrate
sudo systemctl restart gunicorn

