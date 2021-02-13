#
#!/bin/bash


while :
do
	
	echo Starting node server..
    node run.js
   	
    echo Git pull changes...
   	git pull

   	echo Installing dependencies..
   	npm install
	 
	echo 
	
done
