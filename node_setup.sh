#!/bin/bash
yes | cp /vagrant/hosts /etc/hosts
yum install ntp -y
systemctl start ntpd.service

