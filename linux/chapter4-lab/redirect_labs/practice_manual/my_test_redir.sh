#!/bin/bash
# Mi propio script de práctica de redirecciones

# 1. Definir nombres de archivos de salida
DIR_PRUEBA="redirect_labs/practica_manual"
CORRECTO="$DIR_PRUEBA/salida_ok.txt"
FALLO="$DIR_PRUEBA/salida_error.txt"

# Crear la carpeta de pruebas si no existe
mkdir -p "$DIR_PRUEBA"

# 2. Enviar texto exitoso al Canal 1 (stdout)
echo "=== PRUEBA DE REDIRECCION EXITOSA ==0" > "$CORRECTO"
date >> "$CORRECTO"

# 3. Forzar un error (ej. listar un archivo que no existe) y atraparlo en el Canal 2 (stderr)
ls -l archivo_que_no_existe_en_la_vida > "$CORRECTO" 2> "$FALLO"

# 4. Usar la entrada estándar (stdin <) para contar las líneas del archivo de errores
echo -n "Total de líneas de error detectadas: "
wc -l < "$FALLO"
