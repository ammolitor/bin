#!/usr/bin/env python
import time

mb = 1024 * 1024
mem = ( ( 3 * 1024 * mb ) + ( 512 * mb ) )
print "trying to allocate " + str(mem) + " bytes of mem (" + str(mem/mb) + " mb)"
a  = "a" * mem

while True:
    print "sleeping"
    time.sleep(1)
