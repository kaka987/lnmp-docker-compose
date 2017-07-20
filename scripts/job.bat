@echo OFF

cd H:\\develop\\dev-ubuntu14.4

if "%1" == "start" goto start
if "%1" == "stop" goto stop
goto done

:start
vagrant up
vagrant ssh -c "sudo docker-compose -f /vagrant/docker-lnmp/docker-compose.yml up -d"
goto done

:stop
vagrant ssh -c "sudo docker-compose -f /vagrant/docker-lnmp/docker-compose.yml stop"
vagrant suspend
goto done

:done 
echo Done!