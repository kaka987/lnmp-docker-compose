# lnmp-docker-compose

Description:

Use vagrant and docker-compose to start up linux-nginx-php-mysql dev service.
Include different php's version, such as php5.6 and php7.2.

---

Prepare:

1 ubuntu 14.04

2 nginx 1.15.5 (latest)

3 mysql 5.7.23

4 php 7.2 and php 5.6

5 docker 17.04.0-ce (already installed)

6 docker-compose 1.13.0 (already installed)


---

Start:

$ git clone https://github.com/kaka987/lnmp-docker-compose.git

$ cd lnmp-docker-compose

$ mkdir mysql/data

$ docker-compose up -d 

$ chown -R www-data.www-data app/*

$ chmod -R 700 app/*

---

Add local url dns to hosts, such as:

192.168.1.1 hello.in
192.168.1.1 www.hello.in

Request: http://hello.in 

---
# update @20200519
* update php7 Dockerfile 
* update php7 php.ini

# update @20181024
* add php7.2 docker 
* add php7 to docker-compose

# update @20181019
* change mysql dockerfile -> mysql version 5.7.23, latest version is 8.0

# update @20170904
* add php7-fpm
* update the timezone in docker

# update @20170810

* add mysql etc 
* add php db scripts
