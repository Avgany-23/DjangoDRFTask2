#!/bin/bash

set -e

cd /usr/src/app/
sleep 10
python manage.py migrate
yes yes | python manage.py collectstatic
gunicorn drf.wsgi -b 0.0.0.0:8000

wait