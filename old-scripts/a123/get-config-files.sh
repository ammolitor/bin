#!/bin/bash

# Usage: $0 [user@]hostname
# will scp $1:/opt/sgss/sgsscfg.*.xml and $1:/opt/sgss/conndata.*.ent to .
# will overwrite dest file becareful not to delete existing [modified] configurations

scp $1:/opt/sgss/sgsscfg.*.xml .
scp $1:/opt/sgss/conndata.*.ent .
