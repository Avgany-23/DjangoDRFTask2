#!/bin/bash

python manage.py collectstatic
python manage.py migrate
sudo systemctl restart gunicorn