---
title: Transmission
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

The password have to be put in clair, the service start hashs the password.

    sudo service transmission-deamon stop
    sudo vi /etc/transmission-daemon/settings.json
    sudo service transmission-deamon start
