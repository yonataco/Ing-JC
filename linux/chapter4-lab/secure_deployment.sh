#!/bin/bash
# Script de Seguridad Integral (chmod + ACL)
# Propósito: Desplegar un directorio con múltiples capas de permisos automáticamente

DIRECTORIO="proyecto_final_seguro"

# 1. Crear el directorio de trabajo
echo "Iniciando la construcción del entorno en: $DIRECTORIO"
mkdir -p $DIRECTORIO

# 2. Permisos base (chmod)
# 770 = rwx (7) para el dueño, rwx (7) para el grupo, --- (0) para los demás
echo "Aplicando permisos de seguridad base (770)..."
chmod 770 $DIRECTORIO

# 3. Listas de Control de Acceso (ACL)
# Asignamos permisos de lectura/ejecución al usuario 'nobody', tanto en el directorio actual como por defecto
echo "Aplicando reglas ACL específicas..."
setfacl -m u:nobody:rx $DIRECTORIO
setfacl -d -m u:nobody:rx $DIRECTORIO

echo "¡Despliegue completado con éxito! Verificando los permisos extendidos finales:"
# Mostrar los permisos detallados al final del script
getfacl $DIRECTORIO
