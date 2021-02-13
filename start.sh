#
#!/bin/bash

function gitPull()
{
	echo Initiate git pull..
	# git pull git@bitbucket.org:pppn9595/facebook_poster_worker
	git pull
}


while (gitPull) && (npm install)
do
	echo Initializing..

	echo Starting node server..
	node run.js;
done




