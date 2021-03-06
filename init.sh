#!/bin/sh

# If backend container was created with a different name, change this.
container=template-django-rest-react_backend_1
manage="docker exec ${container} python manage.py"

echo Starting migrate...
$manage migrate
echo Starting loaddata users...
$manage loaddata users
