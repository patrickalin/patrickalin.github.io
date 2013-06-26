---
title: Puppet
description : Manage your servers
layout: layoutTypeContent
type: Design
category: Measurement
status: Approved
authors: Patrick Alin
date: june 2013
---

##Description

To configure infrastructure.

Status : mandatory

##Install Puppet-Master

[puppet link](http://bit.ly/PE3_download)

Warning : Ubuntu 13.04 not yet supported

    tar -xvf puppet-enterprise-3.0.0-ubuntu-12.04-amd64.tar.gz
    cd puppet-enterprise-3.0.0-ubuntu-12.04-amd64
    sudo ./puppet-enterprise-installer

I have small infra so I put everything on one VM

    Install puppet master? Y
    Install PuppetDB and console on this node? Y
    Install the cloud provisioner? Y
    The puppet master's certificate will contain a unique name ("certname"); this should be the main DNS
   name at which it can be reliably reached. Puppet master's certname? [Default]
    The puppet master's certificate can contain DNS aliases; agent nodes will only trust the master if they
   reach it at its certname or one of these official aliases. Puppet master's DNS aliases (comma-separated
   list)? [Default]
   Install a PostgreSQL server locally? y
    Admin email address (will be used as account name) for accessing the console interface? <email>
    Password for user patrickalin@gmail.com (minimum 8 characters)? <password>
    What is the name of your SMTP server? <smtp>
    Install these packages automatically? y
    Create symbolic links to Puppet executables in "/usr/local/bin"? y
    Perform installation? y


To test :
    https://puppet:443

##Install Puppet-Agent

   
    tar -xvf puppet-enterprise-3.0.0-ubuntu-12.04-amd64.tar.gz
    cd puppet-enterprise-3.0.0-ubuntu-12.04-amd64
    sudo ./puppet-enterprise-installer

    Install puppet master? N
    Puppet master hostname to connect to? [Default: puppet] 
    Install PuppetDB? N
    Install the console? N
    Install the cloud provisioner? N
    Install puppet agent? Y
    Certname for this node? [Default)
    Install these packages automatically? Y
    Create symbolic links to Puppet executables in "/usr/local/bin"? Y
     Perform installation? Y

##Adding nodes

    https://puppet:443

    node request
Accept



##Firewall

If you have a firewall running, please ensure the following TCP ports are open: 443, 8140, 61613, 8081
If you have a firewall running, please ensure outbound connections to are allowed via the following TCP
   ports: 443, 8081

##Sizing

 NODES       | MEMORY
------------------------------
 1    -  100 | 192 -  512 MB
 100  -  500 | 512 - 1024 MB
 500  - 1000 | 1   -    2 GB
 1000 - 2000 | 2   -    4 GB
      > 2000 | 4 GB or greater



