#
#!/bin/bash

function gitPull()
{
	echo Initiate git pull..
	# git pull git@bitbucket.org:pppn9595/facebook_poster_worker
	git pull
}


while :
do
	echo Initializing..

	if gitPull && npm install; then
		echo Starting node server..
    	node run.js;
  	else
  		echo Shutting down..
  		break;
  	fi
done




