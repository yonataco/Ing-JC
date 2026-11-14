#!/bin/bash
CARPETA="practice_multi" ; mkdir -p "$CARPETA" ; cd "$CARPETA"

EXITOS="reporte_ok.log"
ERRORES="reporte_errores.log"

echo "===  ANNOUNCE MULTICOMMAND ===" > "$EXITOS"
date >> "$EXITOS"

ls -la .. ; uptime ; ls -l /root 1>> "$EXITOS" 2> "$ERRORES" 

echo -n "Total de anomalias registradas: " 
wc -l < "$ERRORES"
