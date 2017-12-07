#!/bin/bash

scp ~/cge6-files/ipks/chromium/nss* 192.168.2.51:
ssh 192.168.2.51 "opkg install nss*ipk"
ssh 192.168.2.51 "rm nss*ipk"

scp ~/cge6-files/ipks/chromium/nss* 192.168.2.52:
ssh 192.168.2.52 "opkg install nss*ipk"
ssh 192.168.2.52 "rm nss*ipk"

scp ~/cge6-files/ipks/chromium/nss* 192.168.2.53:
ssh 192.168.2.53 "opkg install nss*ipk"
ssh 192.168.2.53 "rm nss*ipk"

scp ~/cge6-files/ipks/chromium/nss* 192.168.2.54:
ssh 192.168.2.54 "opkg install nss*ipk"
ssh 192.168.2.54 "rm nss*ipk"

scp ~/cge6-files/ipks/chromium/nss* 192.168.2.55:
ssh 192.168.2.55 "opkg install nss*ipk"
ssh 192.168.2.55 "rm nss*ipk"

scp ~/cge6-files/ipks/chromium/nss* 192.168.2.56:
ssh 192.168.2.56 "opkg install nss*ipk"
ssh 192.168.2.56 "rm nss*ipk"

scp ~/cge6-files/ipks/chromium/nss* 192.168.2.57:
ssh 192.168.2.57 "opkg install nss*ipk"
ssh 192.168.2.57 "rm nss*ipk"

scp ~/cge6-files/ipks/chromium/nss* 192.168.2.58:
ssh 192.168.2.58 "opkg install nss*ipk"
ssh 192.168.2.58 "rm nss*ipk"

scp ~/cge6-files/ipks/chromium/nss* 192.168.2.59:
ssh 192.168.2.59 "opkg install nss*ipk"
ssh 192.168.2.59 "rm nss*ipk"
