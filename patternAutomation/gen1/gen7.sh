main() { 
    for (( i=0; i<16; i++ )); do
        local RAND=$((RANDOM))
        local RAND10=$((RAND % 10))
        local RESULT=$((RAND % 17))
        local INCREMENTOR=1
        local COUNTER=0
        local INDEX=0
        local COMMATA=","
        local ECKIGE_KLAMMER="["
        local ECKIGE_KLAMMER_CLOSE="]"
        local KLAMMER="($ECKIGE_KLAMMER $COMMATA $ECKIGE_KLAMMER_CLOSE)"
        
        # test output
        echo "$KLAMMER"
        
        local PATTERN="< ${KLAMMER[0]} > # midichan $i"
        echo "$PATTERN"
        
        local COMPLEX_PATTERN="<${KLAMMER}${COMMATA}${KLAMMER}> # midichan $i"
        echo "$COMPLEX_PATTERN"
    done
}

# Call the main function
main

