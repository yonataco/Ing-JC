#!/bin/bash
CARPETA="shield_lab"
mkdir -p "$CARPETA" && cd "$CARPETA"

SEARCH_RESULTS="results_ok.log"
ERRORS="report_error.log"

touch report{1..4}.txt system{1..4}.log test{1..3}.sh
chmod 600 *.log
ls -la | grep "*.txt" 1>> "$SEARCH_RESULTS" 2>> "$ERRORS"
ls -l /root 1>> "$SEARCH_RESULTS" 2>> "$ERRORS"
echo -n "Total de errores capturados en el Canal 2: "
wc -l < "$ERRORS"
