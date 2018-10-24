# lnmp-docker-compose


Prepare:

1 ubuntu 14.04

2 nginx 1.15.5 (latest)

3 mysql 5.7.23

4 php 7.2

5 docker 17.04.0-ce (already installed)

6 docker-compose 1.13.0 (already installed)



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

# update @20181024
1.add php7.2 docker
2 add php7 to docker-compose

# update @20181019
1. change mysql dockerfile -> mysql version 5.7.23, latest version is 8.0

# update @20170904
1. add php7-fpm
2. update the timezone in docker

# update @20170810

1. add mysql etc 
2. add php db scripts
