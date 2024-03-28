#!/bin/bash

set -xe

main() {
  echo "Script executed at $(date)"
    
  local LOG="log.txt"
  local TIME=$(date)
    condition(){
    while [ $counter -lt 5 ]; do
    ./gen10.sh >> "$output_file"
    sleep $TIMESTAMP + 1  # Sleep for 60 seconds (1 minute)
    ((counter++))
    done  # end of while loop
}

    divider(){ 
        echo "------------------------------------"
            # if input n; then
        # input 1 > basic pattern  
        # input 2 > complex pattern
        # input 3 > hyperComplex pattern 
            #     || exit 1
    }
    divider

    # my main function which gives out a pattern
    loop(){
    for (( i=0; i<16; i++ )); do
        local RAND10=$((RAND % 10))

        # patternStrucuture
        local COMMATA=","
        local ECKIGE_KLAMMER="["
        local ECKIGE_KLAMMER_CLOSE="]"
        local KLAMMER="($ECKIGE_KLAMMER $COMMATA $ECKIGE_KLAMMER_CLOSE)"

        # FX
        local FX="FX"
        local FX1="FX1"
        local FX2="FX2"    
        local FX3="FX3"

        # Prefunctions
        local JUX="jux"
        local REV="revert"
        local SLI="slice"

        # gain
        local GAIN=" # gain 1.1 "
        local MIDICHAN=" # midichan $i"
        # test output
        # echo "$KLAMMER"
        
        local PATTERN="< ${KLAMMER} > # midichan $i"
        echo "$PATTERN"
        echo "$TIMESTAMP"
        local COMPLEX_PATTERN="<${KLAMMER}${COMMATA}${KLAMMER}$GAIN> $MIDICHAN" | tee -a "$LOG"
        echo "$COMPLEX_PATTERN"
    done
    }
   # loop         this is a function call

basic(){
        local INST="d1"
        local OPERATOR=" $"
        local SOUND=" sound"
        local BD=" bd"
        local MULT=' *'
        local RAND16=$((RAND % 16))
        local CHANNEL="1"
 #       local PATTERN="< ${INST}${SOUND}${BD${MULT}} > # midichan ${CHANNEL}"
        local PATTERN="<${INST}${OPERATOR}${BD}${MULT}> # midichan ${CHANNEL}"

        echo "$INST"
        echo "$OPERATOR"
        echo "$SOUND"
        echo "$BD"
        echo "$MULT"
        echo "$RAND16"
        echo "$CHANNEL"
        echo "$PATTERN"

        # append my pattern to a tidal file.
        # echo $PATTERN > file.tidal
}
    # we are still in the main Function.
    basic
}


main

