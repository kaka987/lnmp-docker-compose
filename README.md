# lnmp-docker-compose
lnmp-docker-compose

$ git clone https://github.com/kaka987/lnmp-docker-compose.git

$ cd lnmp-docker-compose

$ mkdir mysql/data

$ docker-compose up -d 

$ chown -R www-data.www-data app/*
$ chmod -R 700 app/*

Add local url dns to hosts, such as:

192.168.1.1 hello.in
192.168.1.1 www.hello.in


Request: http://hello.in 

# update @20170904
1. add php7-fpm
2. update the timezone in docker

# update @20170810

1. add mysql etc 
2. add php db scripts
