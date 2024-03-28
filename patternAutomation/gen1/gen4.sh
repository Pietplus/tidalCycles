main() { 

    for (( i=0; i<16; i++ )); do
        local RAND=$((RANDOM))
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
        local COMPLEX_PATTERN="< ${KLAMMER[0] $COMMATA ${KLammer[0]}} > # midichan $i"
        echo "$PATTERN"
    done
}

# Call the main function
main

