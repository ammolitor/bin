#!/bin/bash

# Usage: $0 [user@]hostname
# will copy id_dsa.pub from ~/.ssh/ to authorized_keys2 on $1
# will overwrite dest file be careful not to delete existing configurations
TEMPKEY='.ssh/tempkey.pub'
REALKEY='.ssh/authorized_keys'

ssh $1 'mkdir .ssh && chmod 700 .ssh'
scp ~/.ssh/id_rsa.pub $1:.ssh/tempkey.pub
ssh $1 "cat ${TEMPKEY} >> ${REALKEY}; rm ${TEMPKEY}; chmod 644 ${REALKEY}"
