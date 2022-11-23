#!/bin/sh
if [ ! -d "/var/log/uwsgi" ]
then
	mkdir /var/log/uwsgi
fi

cd $1

if [ ! -f "uwsgi.ini" ]
then
	cp /uwsgi.ini uwsgi.ini
	echo "module=$(basename $(dirname $(find -iname settings.py))).wsgi:application" >> uwsgi.ini
	echo "socket=:$2" >> uwsgi.ini
fi

pip show django

if [ $? ]
then
	pip install -r requirements.txt
fi

uwsgi --ini uwsgi.ini

python
