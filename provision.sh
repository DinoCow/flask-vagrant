#!/bin/sh
if [ -d "/vagrant/contrajd/venv" ]
then
   cd /vagrant/contrajd
   . venv/bin/activate
   pip install Flask
   pip install requests
   pip install json

   python app &
   
else
	cd /vagrant/
	sudo apt-get -y install python python-pip git 
	sudo pip install virtualenv
	cd contrajd
	virtualenv venv

	. venv/bin/activate

	pip install Flask
	pip install requests
	pip install json

	python app.py &
fi




