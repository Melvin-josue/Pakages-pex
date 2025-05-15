#!/bin/bash

# Ruta de destino (Termux usa $PREFIX/bin)
BIN_DIR="$PREFIX/bin"
SCRIPT_NAME="pex"
SRC="./pex.sh"

# Validar existencia del archivo fuente
if [[ ! -f "$SRC" ]]; then
  echo "⚠️  Archivo $SRC no encontrado. Asegúrate de estar en la carpeta correcta."
  exit 1
fi

# Copiar el archivo
echo "📦 Instalando $SCRIPT_NAME en $BIN_DIR..."
cp "$SRC" "$BIN_DIR/$SCRIPT_NAME"

# Dar permisos de ejecución
chmod +x "$BIN_DIR/$SCRIPT_NAME"

echo "✅ Instalado correctamente. Puedes usar el comando: pex"

