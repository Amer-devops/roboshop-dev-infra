#!/bin/bash

component=$1
environment=$2
dnf install ansible -y
ansible-pull -U https://github.com/Amer-devops/ansible-roboshop-roles-tf.git -i inventory.ini -e component=$component main.yaml
