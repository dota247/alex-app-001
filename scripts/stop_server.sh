#!/bin/bash

kill $(ps -e | grep "node" | cut -d " " -f 2)

#npm --prefix /home/ec2-user/app run stop - should be this

