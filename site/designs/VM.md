---
title: VM
description : What I put on a VM
layout: layoutTypeContent
type: Design
category: Measurement
status: Approved
authors: Patrick Alin
date: june 2013
---

##Puppet agent

   To push all configurations

##Puppet config


###Upgrade ubuntu

    sudo apt-get update
    sudo apt-get upgrade

###Push my ssh key

   ssh-copy-id -i ~/.ssh/id_rsa.pub <user>@<ipaddress>

###Ntp

   sudo apt-get install ntpdate

###Acpi (to shutdown the VM)

     sudo apt-get install acpid 


###Change hostname

   sudo vi /etc/hosts
   sudo vi /etc/hostname

###Fix Ip

    sudo vi /etc/network/interfaces


    auto eth0
    iface eth0 inet static
           address 192.168.1.130
           netmask 255.255.255.0
           gateway 192.168.1.1

    sudo /etc/init.d/networking restart

###Fix DNS


    sudo vi /etc/resolv.conf

###Log centralization

    Forward to Rsyslog core

###Zabbix agent

    Agent zabbix to monitore the server

###Postfix relay

    sudo apt-get install mailutils
    sudo apt-get install postfix

    vi /etc/postfix/main.cf

    myhostname=morpheus.brutele.be
    relayhost = smtp.brutele.be 
    myorigin = alin.be

    echo "essai" | mail -s "Essai" <email>
