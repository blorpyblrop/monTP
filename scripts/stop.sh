#!/bin/bash


# Pour lancer ce script
# 1 rendre le script est executable (a faire une seule fois) : chmod u+x stop.sh
# 2 executer le script : ./stop.sh

cmd=`docker stop $(docker ps -aq) > /dev/null 2>&1`
cmd=`docker rm $(docker ps -aq) > /dev/null 2>&1`
cmd=`docker ps -aq`

if [ -z "$cmd" ]
then
   echo "Plus de containers actifs et inactifs"
else
   echo "Erreur : il rest des containers !"
fi
