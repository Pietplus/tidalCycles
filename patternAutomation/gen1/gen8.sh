main() { 
    for (( i=0; i<16; i++ )); do
        local RAND10=$((RAND % 10))

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

