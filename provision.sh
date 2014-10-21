#!/bin/sh
if [ -d "/vagrant/contrajd/venv" ]
then
   cd /vagrant/contrajd
   source venv/bin/activate
   pip install Flask
   pip install requests
   pip install json

   python app.py &
   
else
	cd /vagrant/
	sudo apt-get -y install python python-pip git 
	sudo pip install virtualenv
	cd contrajd
	virtualenv venv

	source venv/bin/activate

	pip install Flask
	pip install requests
	pip install json

	python app.py &
fi




