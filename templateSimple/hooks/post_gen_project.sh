#!/bin/sh

echo "Ejecutando hook post-gen..."

# Crear carpeta
mkdir creado_por_post
echo "Carpeta creado_por_post ha sido creada."

# Crear un archivo dentro de la carpeta
echo "Este archivo fue creado por el hook post-gen" > creado_por_post/archivo_creado_por_post.txt
echo "Archivo creado_por_post/archivo_creado_por_post.txt ha sido creado."


echo "Ejecutando hook post-gen..."

# Borrar la carpeta borrada si existe
if [ -d "borrada" ]; then
    echo "Borrando carpeta borrada..."
    rm -rf borrada
else
    echo "Carpeta borrada no existe, continuando..."
fi

# Borrar un archivo específico si existe
ARCHIVO_ESPECIFICO="memuero.txt"
if [ -f "$ARCHIVO_ESPECIFICO" ]; then
    echo "Borrando $ARCHIVO_ESPECIFICO..."
    rm -f "$ARCHIVO_ESPECIFICO"
else
    echo "$ARCHIVO_ESPECIFICO no existe, continuando..."
fi