#!/bin/bash
#npm --prefix /home/ec2-user/app run start
#su - ec2-user -c 'at now +1 minutes -f /home/ec2-user/app/at/start.sh'
su - ec2-user -c 'cd /home/ec2-user/app && npm start'
