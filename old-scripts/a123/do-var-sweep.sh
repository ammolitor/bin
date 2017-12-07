#!/bin/bash
#===============================================================================
#
#          FILE:  do-var-sweep.sh
# 
#         USAGE:  ./do-var-sweep.sh 
# 
#   DESCRIPTION:  runs a var sweep at varied kw setpoints
# 
#        AUTHOR:   Aaron Molitor
#       COMPANY:   A123 SYstems 
#       VERSION:  1.0
#       CREATED:  2013-07-18 16:33:16 CDT
#      REVISION:  ---
#===============================================================================

kws=( 600 400 200 0 -200 -400 -600 )

for kw in ${kws[@]};
do
	echo -e "setting P to" $kw
	/opt/sgss/bin/dmw 6002 com realpowersetpoint $kw
	kvar=-500

	while [ $kvar -le 500 ]
	do
		echo -e "setting Q to" $kvar "with P at" $kw	
		/opt/sgss/bin/dmw 6002 com reactivepowersetpoint $kvar
		# sleep 5
		# uiconnector -a 6002  -r realpowersetpoint
		# uiconnector -a 5001  -r realpowerdemand
		# uiconnector -a 27001 -r realpoweroutput
		# uiconnector -a 21001 -r realpwr
		# uiconnector -a 6002  -r reactivepowersetpoint
		# uiconnector -a 5001  -r kvarpowerdemand
		# uiconnector -a 27001 -r reactivepoweroutput
		# uiconnector -a 21001 -r reactivepwr
		sleep 10
		kvar=$[$kvar+5]
	done

	echo -e "Cleaning up and waiting"
	kvar=-500
	/opt/sgss/bin/dmw 6002 com realpowersetpoint 0
	/opt/sgss/bin/dmw 6002 com reactivepowersetpoint 0
	sleep 10

done
