#!/bin/bash

# Usage: $0 [user@]hostname
# will scp ./sgsscfg.*.xml and conndata.*.ent to  $1:/opt/sgss/
# will overwrite dest file becareful not to delete existing [modified] configurations

scp sgsscfg.*.xml $1:/opt/sgss/
scp conndata.*.ent $1:/opt/sgss/
