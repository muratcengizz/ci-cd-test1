#!/bin/bash

docker exec -it django-container1 python manage.py makemigrations
docker exec -it postdatabase-container python manage.py migrate