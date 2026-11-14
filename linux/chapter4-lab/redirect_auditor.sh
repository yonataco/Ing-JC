#!/bin/bash
# Lección 66: Auditoría con stdout (1>), stderr (2>) y stdin (<)

OK_LOG="redirect_labs/reporte_limpio.log"
ERR_LOG="redirect_labs/reporte_errores.log"

echo "=== INICIO DE AUDITORIA ===" > "$OK_LOG"
date >> "$OK_LOG"

# Audita tu carpeta actual y /root separando canal 1 (>>) y canal 2 (2>)
ls -l ~/ing-jc/linux/chapter4-lab /root >> "$OK_LOG" 2> "$ERR_LOG"

# Usa stdin (<) para contar cuántas líneas de error se registraron
echo -n "Total de errores capturados en el Canal 2: "
wc -l < "$ERR_LOG"
