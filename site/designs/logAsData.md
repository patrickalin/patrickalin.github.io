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

##Introduction##

I push all my logs from VM Rsyslog to one Rsyslog Core.

The Rsyslog Core push in Elastic Search.

I use Elastic Search Head and Kibana3 to display all logs.

##Rsyslog

For the Rsyslog core, I use : [mmnormalize](http://www.rsyslog.com/doc/mmnormalize.html)

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
