main() {
    # Generate 10 patterns and write them into a file
    while [ $counter -lt 10 ]; do
    ./gen9.sh >> "$output_file"
    sleep $TIMESTAMP + 1  # Sleep for 60 seconds (1 minute)
    ((counter++))
    done  
     
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
        echo "$TIMESTAMP"
        local COMPLEX_PATTERN="<${KLAMMER}${COMMATA}${KLAMMER}> # midichan $i" | tee -a "$LOG"
        echo "$COMPLEX_PATTERN"
    done
}

# Call the main function
main

