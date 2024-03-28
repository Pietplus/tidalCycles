#!/bin/bash

set -e # -x

main(){
        local DATE=$(date)
        # local RANDARR="echo ${my_array[$RANDOM % ${#my_array[@]}]}"
        # *******************************************************************
        local TRIOP=" <"
        local TRICO=">"
        local INST="d1"
        local OPERATOR=" $"
        local SOUND=" sound"
        local BD="bd"
        # *******************************************************************
        local INSTARR=(bd cp mt rs hc lt ht mc lc ch oh sn cb c, rd cp)
        local MULT='*'
        local RAND16=$((RANDOM % 16))
        local CHANNEL=" 1"
        local HASH=" #"
        local MIDICHAN=" midichan"
        local PATTERN="${INST}${OPERATOR}${TRIOP}${INSTARR[$RAND16]}${MULT}${RAND16}${TRICO}${HASH}${MIDICHAN}${CHANNEL}"

        echo $PATTERN | tee -a /Users/piet/Desktop/tidal/patternAutomation/automatic.tidal
}
main 
