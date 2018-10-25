@echo OFF

cd c:\\workplace\\lnmp-docker-compose\\scripts

if "%1" == "start" goto start
if "%1" == "stop" goto stop
goto done

:start
vagrant up
vagrant ssh -c "sudo docker-compose -f /vagrant/docker-compose.yml up -d"
goto done

:stop
vagrant ssh -c "sudo docker-compose -f /vagrant/docker-compose.yml stop"
vagrant suspend
goto done

:done 
echo Done!