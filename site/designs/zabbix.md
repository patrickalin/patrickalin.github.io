---
title: Zabbix
description : Try to monitor all servers
layout: layoutTypeContent
type: Design
category: Measurement
status: Approved
authors: Patrick Alin
date: june 2013
---

##Description

To monitore infrastructure.

Status: in test

##Download link

 [puppet link](http://bit.ly/PE3_download)

##Zabbix server

    wget http://sourceforge.net/projects/zabbix/files/ZABBIX%20Latest%20Stable/2.0.6/zabbix-2.0.6.tar.gz/download
    tar -xvf download


    cd zabbix
    apt-get install gcc
    apt-get install make
    ./configure --enable-agent
    make install


##Zabbix agent (To push with Puppet =) )

    vi /usr/local/etc/zabbix_agentd.conf server 192.168.1.104

    vi /etc/rc.local 

Zabbix can't be run in root
    su <user> -c /usr/local/sbin/zabbix_agentd

##Utilisation




