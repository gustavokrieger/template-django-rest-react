@ECHO OFF

REM If backend container was created with a different name, change this.
SET container=template-django-rest-react_backend_1

REM Commands
SET exec=docker exec %container%
SET manage=%exec% python manage.py

REM Django
ECHO Starting migrate...
%manage% migrate
ECHO Collecting static files...
%manage% collectstatic --no-input

REM Nginx
FOR /f "tokens=*" %%a in ('%exec% /etc/init.d/nginx status') do SET output=%%a
IF "%output%"=="nginx is not running ... failed!" (
    ECHO Starting nginx...
    %exec% /usr/sbin/nginx
)
