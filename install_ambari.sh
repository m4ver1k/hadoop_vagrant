#!/bin/bash
yum install wget -y
wget -O /etc/yum.repos.d/ambari.repo http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.7.3.0/ambari.repo
yum install ambari-server -y
ambari-server setup -s
ambari-server start