#!/bin/bash
##
##
ENVIRONMENT=$1
if [ $ENVIRONMENT = "Dev" ];then
	sshpass -p "gamut" scp target/gamutkart.war gamut@172.17.0.2:/home/gamut/Distros/apache-tomcat-8.5.23/webapps
	sshpass -p "gamut" ssh gamut@172.17.0.2 "JAVA_HOME=/home/gamut/Distros/jdk1.8.0_151" "/home/gamut/Distros/apache-tomcat-8.5.23/bin/startup.sh"

elif  [ $ENVIRONMENT = "UAT" ];then
	sshpass -p "gamut" scp target/gamutkart.war gamut@172.17.0.3:/home/gamut/Distros/apache-tomcat-8.5.23/webapps
	sshpass -p "gamut" ssh gamut@172.17.0.3 "JAVA_HOME=/home/gamut/Distros/jdk1.8.0_151" "/home/gamut/Distros/apache-tomcat-8.5.23/bin/startup.sh"
<<<<<<< HEAD
echo "deployment Successfull!"
=======
echo "deployment is completed!"
>>>>>>> master
fi

