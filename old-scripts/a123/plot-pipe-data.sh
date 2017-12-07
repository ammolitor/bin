#!/bin/bash

trap cleanup 0 2 15

cleanup() {
    retval=$?
    trap - 0 2 15
    kill `jobs -p`
    rm $FIFO
    echo The accumulated data has been left in $OUTFILE >&2
    exit $retval
}

OUTFILE=~/data/pipelogger.`date +%s`.out
#OUTFILE=~/data/pipelogger.out

FIFO=/tmp/plotdata.gnu
mkfifo $FIFO

gnuplot -geometry 1280x720 -persist <$FIFO &

plot() {
	echo plot \"$OUTFILE\" using 1:2 lt 3 lw 2 title \"POI realpwr\" with lines, \
	          \"$OUTFILE\" using 1:3 lt 4 lw 2 title \"ESS realpwr\" with lines, \
	          \"$OUTFILE\" using 1:4 lt 6 lw 2 title \"group essrealpower\" with lines, \
	          \"$OUTFILE\" using 1:5 lt 2 lw 2 title \"group averagesoc\" axes x1y2 with lines, \
	          \"$OUTFILE\" using 1:6 lt 8 lw 2 title \"group realpoweroutput\" with lines, \
	          \"$OUTFILE\" using 1:7 lt 1 lw 2 title \"parkpilot realpoweroutput\" with lines
}

plotdata() {
    cat <<EOF
reset
set title "AEROS Data Log" font "lucidatypewriter,14,bold"
set terminal x11 noraise font "lucidatypewriter,10,medium"
set label font "lucidatypewriter,10,medium"
set key top left
set key width 0 height 0
set grid
set border 15 lw 1/2

set bmargin 2
set lmargin 5
set tmargin 2
set rmargin 5

set xlabel "Time" font "lucidatypewriter,12,bold"
set ylabel "kW" font "lucidatypewriter,12,bold"
set y2label "percent" font "lucidatypewriter,12,bold"

set xtics border nomirror rotate by -90 font "lucidatypewriter,10,medium"
set ytics border nomirror rotate by 0   font "lucidatypewriter,10,medium"
set y2tics border nomirror rotate by 0   font "lucidatypewriter,10,medium"

set yrange [-11500:24500]
set y2range [-10:110]
EOF

    if [ -e "$OUTFILE" ]; then
	plot
    fi

    count=0
    #
    # order of property ids is important in the following awk statement the first porperty is used to get the datestr
    #
    # to get data from a remote sgdc use the ssh cat | awk below
    # ssh <sgdc-ip-address> cat /var/spool/sgss/debug | awk -F":" '      \
    # ...
    # print datestr, var1, var2, var3, var4}' |

    # to get data from a local dev vm use the awk below
    awk -F":" '                                                        \
    /22001:1321/{datestr=sprintf("%s", $1); var1=sprintf("%s", $4)}    \
    /22002:1321/{var2=sprintf("%s", $4)}                               \
    /5001:1086/{var3=sprintf("%s", $4)}                                 \
    /5001:821/{var4=sprintf("%s", $4)}                                 \
    /5001:828/{var5=sprintf("%s", $4)}                                 \
    /23001:19007/{var6=sprintf("%s", $4);                               \
    print datestr, var1, var2, var3, var4, var5, var6}' /var/spool/sgss/debug |
    while read line ; do
	echo $line >> $OUTFILE
	count=$((count + 1))
	if [ $count -eq 120 ]; then # change this number to alter gnuplot update rate
	    count=0
	    plot
	fi
    done
}

plotdata >> $FIFO
