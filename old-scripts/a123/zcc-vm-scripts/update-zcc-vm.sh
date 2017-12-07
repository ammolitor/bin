#!/bin/bash

ssh 192.168.2.51 "echo am-zcc-cl1 > /etc/hostname"
ssh 192.168.2.51 "hostname -F /etc/hostname"
ssh 192.168.2.51 "sed -i 's/1000[0-9]/10001/' /home/a123sgss/.xinitrc"

ssh 192.168.2.52 "echo am-zcc-cl2 > /etc/hostname"
ssh 192.168.2.52 "hostname -F /etc/hostname"
ssh 192.168.2.52 "sed -i 's/1000[0-9]/10002/' /home/a123sgss/.xinitrc"

ssh 192.168.2.53 "echo am-zcc-cl3 > /etc/hostname"
ssh 192.168.2.53 "hostname -F /etc/hostname"
ssh 192.168.2.53 "sed -i 's/1000[0-9]/10003/' /home/a123sgss/.xinitrc"

ssh 192.168.2.54 "echo am-zcc-cl4 > /etc/hostname"
ssh 192.168.2.54 "hostname -F /etc/hostname"
ssh 192.168.2.54 "sed -i 's/1000[0-9]/10004/' /home/a123sgss/.xinitrc"

ssh 192.168.2.55 "echo am-zcc-cl5 > /etc/hostname"
ssh 192.168.2.55 "hostname -F /etc/hostname"
ssh 192.168.2.55 "sed -i 's/1000[0-9]/10005/' /home/a123sgss/.xinitrc"

ssh 192.168.2.56 "echo am-zcc-cl6 > /etc/hostname"
ssh 192.168.2.56 "hostname -F /etc/hostname"
ssh 192.168.2.56 "sed -i 's/1000[0-9]/10006/' /home/a123sgss/.xinitrc"

ssh 192.168.2.57 "echo am-zcc-cl7 > /etc/hostname"
ssh 192.168.2.57 "hostname -F /etc/hostname"
ssh 192.168.2.57 "sed -i 's/1000[0-9]/10007/' /home/a123sgss/.xinitrc"

ssh 192.168.2.58 "echo am-zcc-cl8 > /etc/hostname"
ssh 192.168.2.58 "hostname -F /etc/hostname"
ssh 192.168.2.58 "sed -i 's/1000[0-9]/10008/' /home/a123sgss/.xinitrc"

ssh 192.168.2.59 "echo am-zcc-cl9 > /etc/hostname"
ssh 192.168.2.59 "hostname -F /etc/hostname"
ssh 192.168.2.59 "sed -i 's/1000[0-9]/10009/' /home/a123sgss/.xinitrc"
