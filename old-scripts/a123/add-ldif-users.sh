#!/bin/bash
#===============================================================================
#
#          FILE:  addLdifUsers.sh
# 
#         USAGE:  ./addLdifUsers.sh 
# 
#   DESCRIPTION:  add user block to ldif file
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:   (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  05/ 4/2012 10:37:49 AM CDT
#      REVISION:  ---
#===============================================================================

i="1"

while [ $i -lt 500 ]
do
	if [ $i -lt 10 ]
	then
		echo "
dn: cn=adminUser0${i},dc=domain,dc=local
objectClass: inetOrgPerson
objectClass: posixAccount
objectClass: top
cn: adminUser0${i}
gidNumber: 500
homeDirectory: /home/ldapadmin	# Non-existent required by posixAccount
sn: adminUser0${i}
uid: adminUser0${i}
uidNumber: 50${i}
userPassword:: e1NTSEF9eFNZZHRTM0tMVlppUjdwMktBRUdZQmMzTDMvNEU1MmU=" >> $1
	else
		echo "
dn: cn=adminUser${i},dc=domain,dc=local
objectClass: inetOrgPerson
objectClass: posixAccount
objectClass: top
cn: adminUser${i}
gidNumber: 500
homeDirectory: /home/ldapadmin	# Non-existent required by posixAccount
sn: adminUser${i}
uid: adminUser${i}
uidNumber: 5${i}
userPassword:: e1NTSEF9eFNZZHRTM0tMVlppUjdwMktBRUdZQmMzTDMvNEU1MmU=" >> $1
	fi
	i=$[$i+1]
done

