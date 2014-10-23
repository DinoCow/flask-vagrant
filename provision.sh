#!/bin/sh
if [ -d "/installed" ]
then
   cd /vagrant/contrajd

   python app.py &
   
else
	cd /vagrant/
	sudo apt-get -y install python python-pip 
	cd contrajd

	sudo pip install Flask 
	sudo pip install requests
	sudo pip install -U flask-cors


	sudo pip install requests --upgrade
	
	sudo mkdir "/installed" 

	python app.py &
fi
