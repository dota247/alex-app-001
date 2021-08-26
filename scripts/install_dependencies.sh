#!/bin/bash
sudo yum upgrade -y
sudo yum install curl -y
mkdir -p /home/ec2-user/app
aws s3 cp s3://001-alex-statlogger-s3/mywebapp.zip /home/ec2-user/app/app.zip
unzip /home/ec2-user/app/app.zip -d /home/ec2-user/app
sudo bash /home/ec2-user/app/nodejs_14
npm install --save /home/ec2-user/app

