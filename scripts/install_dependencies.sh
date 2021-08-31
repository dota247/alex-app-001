#!/bin/bash
#sudo yum upgrade -y
#sudo yum install curl -y
# nodejs 14 setup
aws s3 cp s3://001-alex-statlogger-s3/mywebapp.zip /home/ec2-user/app/app.zip
unzip /home/ec2-user/app/app.zip -d /home/ec2-user/app/
su - ec2-user -c 'cd /home/ec2-user/app && npm install --save /home/ec2-user/app'
su - ec2-user -c 'cd /home/ec2-user/app && sudo chown ec2-user ./*'
# service file setup
sudo chmod +x /home/ec2-user/app/scripts/task/start.sh
sudo cp /home/ec2-user/app/service/app.service /usr/lib/systemd/system/app.service
sudo systemctl daemon-reload
# code deploy setup
#sudo mkdir -p /home/ec2-user/jmanage/codedeploy
#sudo wget https://aws-codedeploy-eu-central-1.s3.amazonaws.com/latest/install -P /home/ec2-user/jmanage/codedeploy/
#sudo chmod +x /home/ec2-user/jmanage/codedeploy/install
#sudo /home/ec2-user/jmanage/codedeploy/install auto

