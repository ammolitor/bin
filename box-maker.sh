#!/bin/bash
VM_NAME=$1
cd ~/Documents/Virtual Machines.localized/${VM_NAME}

/Applications/VMware\ Fusion.app/Contents/Library/vmware-vdiskmanager -d Virtual\ Disk.vmdk
/Applications/VMware\ Fusion.app/Contents/Library/vmware-vdiskmanager -k Virtual\ Disk.vmdk
cp ~/src/vagrant-files/metadata.json . 
tar czvf ~/src/vagrant-files/boxes/${VM_NAME}.vmware.box ./*
