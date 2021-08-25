#!/bin/bash
sudo yum upgrade -y
sudo yum install curl -y
sudo curl --silent --location https://rpm.nodesource.com/setup_14.x | sudo bash -
sudo yum install nodejs -y
mkdir -p /home/ec2-user/app
npm install --save /home/ec2-user/app

