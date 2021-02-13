#
#!/bin/bash

function gitPull()
{
	git pull
	local res=$?
    echo "$res"
}


while :
do
	echo Git pull changes...
	git_status=$(gitPull)
	echo status:
	echo $git_status

	if [[ "${git_status: -1}" -eq 0 ]]; then
		echo Git pull succeeeded..;
  	else
  		echo Something went wrong! 
  		echo Shutting down..
  		break;
  	fi

	echo Installing dependencies..
    npm install
    npm_status=$?
    echo $npm_status
	if [[ "$npm_status" -eq 0 ]]; then
		echo Npm install succeeeded..;
  	else
  		echo Something went wrong! 
  		echo Shutting down..
  		break;
  	fi
   
    echo Starting node server..
    node run.js 
	node_status=$?
	echo $node_status
	if [[ "$node_status" -eq 42 ]]; then
		echo Restart trigger received from server..;
  	else
  		echo Something went wrong! 
  		echo Shutting down..
  		break;
  	fi

done




