#!/bin/bash
#===============================================================================
#
#          FILE:  format-pipelogger-data.sh
# 
#         USAGE:  ./format-pipelogger-data.sh  <log file>
# 
#   DESCRIPTION:  reformats data collected with the pipelogger
#===============================================================================


# data collecetd 5/6-Jan
# awk -F":" ' \
# /5001:816/{datestr=sprintf("%s", $1); var01=sprintf("%s", $4)} \
# /5001:1033/{var02=sprintf("%s", $4)} \
# /22001:1321/{var03=sprintf("%s", $4)} \
# /22002:1321/{var04=sprintf("%s", $4)} \
# /23001:19007/{var05=sprintf("%s", $4)} \
# /27001:528/{var06=sprintf("%s", $4)} \
# /27002:528/{var07=sprintf("%s", $4)} \
# /27003:528/{var08=sprintf("%s", $4)} \
# /27004:528/{var09=sprintf("%s", $4)} \
# /27005:528/{var10=sprintf("%s", $4)} \
# /27006:528/{var11=sprintf("%s", $4)} \
# /27007:528/{var12=sprintf("%s", $4)} \
# /27008:528/{var13=sprintf("%s", $4)} \
# /27009:528/{var14=sprintf("%s", $4); \
# print datestr, var01, var02, var03, var04, var05, var06, var07, var08, var09, var10, var11, var12, var13, var14}' $1 >> $1.formatted.log

# latest config not yet implemented
awk -F":" ' \
/5001:1033/{datestr=sprintf("%s", $1); var1=sprintf("%s", $4)} \
/22001:1321/{var2=sprintf("%s", $4)} \
/22002:1321/{var3=sprintf("%s", $4)} \
/23001:19007/{var4=sprintf("%s", ($4 * 100))} \
/23001:19206/{var5=sprintf("%s", ($4 * 100))} \
/5001:816/{var6=sprintf("%s", $4)} \
/1001:9325/{var7=sprintf("%s", $4)} \
/1002:9325/{var8=sprintf("%s", $4)} \
/1003:9325/{var9=sprintf("%s", $4)} \
/1004:9325/{var10=sprintf("%s", $4)} \
/1005:9325/{var11=sprintf("%s", $4)} \
/1006:9325/{var12=sprintf("%s", $4)} \
/1007:9325/{var13=sprintf("%s", $4)} \
/1008:9325/{var14=sprintf("%s", $4)} \
/1009:9325/{var15=sprintf("%s", $4)} \
/1001:9361/{var16=sprintf("%s", $4)} \
/1002:9361/{var17=sprintf("%s", $4)} \
/1003:9361/{var18=sprintf("%s", $4)} \
/1004:9361/{var19=sprintf("%s", $4)} \
/1005:9361/{var20=sprintf("%s", $4)} \
/1006:9361/{var21=sprintf("%s", $4)} \
/1007:9361/{var22=sprintf("%s", $4)} \
/1008:9361/{var23=sprintf("%s", $4)} \
/1009:9361/{var24=sprintf("%s", $4)} \
/1001:9362/{var25=sprintf("%s", $4)} \
/1002:9362/{var26=sprintf("%s", $4)} \
/1003:9362/{var27=sprintf("%s", $4)} \
/1004:9362/{var28=sprintf("%s", $4)} \
/1005:9362/{var29=sprintf("%s", $4)} \
/1006:9362/{var30=sprintf("%s", $4)} \
/1007:9362/{var31=sprintf("%s", $4)} \
/1008:9362/{var32=sprintf("%s", $4)} \
/1009:9362/{var33=sprintf("%s", $4)} \
/27001:504/{var34=sprintf("%s", $4)} \
/27002:504/{var35=sprintf("%s", $4)} \
/27003:504/{var36=sprintf("%s", $4)} \
/27004:504/{var37=sprintf("%s", $4)} \
/27005:504/{var38=sprintf("%s", $4)} \
/27006:504/{var39=sprintf("%s", $4)} \
/27007:504/{var40=sprintf("%s", $4)} \
/27008:504/{var41=sprintf("%s", $4)} \
/27009:504/{var42=sprintf("%s", $4)} \
/6003:60078/{var43=sprintf("%s", $4)} \
/6003:60079/{var44=sprintf("%s", $4)} \
/6003:60080/{var45=sprintf("%s", $4)} \
/6003:60081/{var46=sprintf("%s", $4)} \
/6003:60082/{var47=sprintf("%s", $4)} \
/6003:60083/{var48=sprintf("%s", $4)} \
/6003:60084/{var49=sprintf("%s", $4); \
print datestr, var1, var2, var3, var4, var5, var6, var7, var8, var9, var10, var11, var12, var13, var14, var15, var16, var17, var18, var19, var20, var21, var22, var23, var24, var25, var26, var27, var28, var29, var30, var31, var32, var33, var34, var35, var36, var37, var38, var39, var40, var41, var42, var43, var44, var45, var46, var47, var48, var49 }' $1 >> $1.formatted.log
