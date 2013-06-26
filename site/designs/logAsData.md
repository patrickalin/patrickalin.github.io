---
title: Log As Data
description : Write all logs in centralized system
layout: layoutTypeContent
type: Design
category: Measurement
status: Approved
reports: Log As Data
authors: Patrick Alin
date: june 2013
---

##Introduction

I push all my logs from VM Rsyslog to one Rsyslog Core.

The Rsyslog Core push in Elastic Search.

I use Elastic Search Head and Kibana3 to display all logs.

##Rsyslog core

###Version

For the Rsyslog core, I use the last version 7. Because the syntax is ligthly easier that 5.


I remove the rsyslog 5 on the server :

    sudo apt-get remove rsyslog 

I compile one new rsyslog 7

    sudo apt-get install make
    sudo apt-get install pkg-config
    sudo apt-get install libjson0-dev uuid-dev libgcrypt11-dev python-docutils zlib1g-dev libcurl
  
    wget http://libestr.adiscon.com/files/download/libestr-0.1.5.tar.gz
    tar -xvf
    ./configure
    make
    make install

    wget http://www.libee.org/files/download/libee-0.4.1.tar.gz
    tar -xvf
    ./configure
    make
    make install

    wget http://www.rsyslog.com/files/download/rsyslog/rsyslog-7.4.1.tar.gz
    tar -xvf
    ./configure --enable-elasticsearch --enable-mmjsonparse
    make
    make install



[mmnormalize](http://www.rsyslog.com/doc/mmnormalize.html)



##Rsyslog agent

I don't change the version of rsyslog.

##ElasticSearch install

    wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.1.tar.gz

    sudo apt-get install git
    git clone git://github.com/mobz/elasticsearch-head.git

    elasticsearch/bin/plugin -install mobz/elasticsearch-head

To test 

    http://elastic:9200/_plugin/head/

To install service

    git clone https://github.com/elasticsearch/elasticsearch-servicewrapper.git

    vi /etc/rc.local
    /home/pa/elasticsearch-0.90.1/bin/service/elasticsearch start

##ES plugun budesk

Install:

    bin/plugin -install lukas-vlcek/bigdesk

Test :

    http://elastic:9200/bigdesk

##Kibana2

Forget Kibana2, you must install one Kibana 2 to each index. I use now Kibana3


    wget https://github.com/rashidkpc/Kibana/archive/v0.2.0.tar.gz
    tar -xvf v0.2.0.tar.gz
    sudo apt-get install ruby rubygems ruby-bundler

Comment bind for you
    vi KibanaConfig.rb

    sudo gem install bundler
    sudo bundle install
    ruby kibana.rb

To test

    http://localhost:5601

To install service

    vi /etc/rc.local
    ruby /home/pa/Kibana-0.2.0/kibana.rb &

##Kibana3



## Miscellaneous resyslog


### rsyslogd -version

    rsyslogd -version

### Rsyslog debug

Rsyslog is not realy good documented.

Try to debug.
    
    sudo service rsyslog stop
    sudo rsyslog -dn

### Rsyslog condition

It's possible to use condition in your *.conf

    if $msg contains '%ASA' then { } else

    if $programname == ["apache_access",
                    "apache_error",
                    "mysql",
                    "php"]
                then {
                action(type="omfile" DynaFile="DailyPerHost_app")
                stop
                }

##Buzz work to try

SyslogNG : to replace this f*** rsyslog
Adiscon LogAnalyzer : display log
