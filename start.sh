#
#!/bin/bash


while :
do
    
    echo Git pull changes...
    git pull

    echo Installing dependencies..
    npm install
   
    echo Starting node server..
    node run.js 
  
done
