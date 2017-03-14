#!/bin/bash

echo "als vagrantuser uitgevoerd"
cd /var/www/devops_test_site
nodejs server.js > /home/ubuntu/stdout.txt 2> /home/ubuntu/stderr.txt &
