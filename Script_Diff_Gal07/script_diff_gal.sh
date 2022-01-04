#!/bin/bash
dr=/home/stream_vid/Dokumente/latex/Script_Diff_Gal
if [ "$1" == "" ]
then
    dr="$dr"07/
    echo "No path adjunct, checking:"
    echo $dr
    fl=$dr/script_diff_gal.tks
    if [ -e $fl ]
    then
    	echo "opening $fl as texmaker session file"
	    texmaker $fl &
	else
		echo "No such file found: $fl"
	fi
else
    dr="$dr"$1
    echo $dr
    texmaker $dr/script_diff_gal.tks &
fi
