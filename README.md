# lnmp-docker-compose
lnmp-docker-compose

$ git clone https://github.com/kaka987/lnmp-docker-compose.git

$ cd lnmp-docker-compose

$ docker-compose up -d 

$ chown -R www-data.www-data app/*
$ chmod -R 700 app/*

add local url to hosts, such as

192.168.1.1 hello.in


request: http://hello.in 
