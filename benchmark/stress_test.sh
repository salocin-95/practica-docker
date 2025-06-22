#!/bin/bash
# Script para hacer prueba de carga con Apache Benchmark

echo "### Carga con ab ###"
# Muestra un título

if command -v ab &> /dev/null; then
  # Si el comando 'ab' está instalado...

  ab -n 100 -c 10 http://localhost:8000/api/benchmark
  # Hace 100 peticiones con 10 simultáneas al endpoint

else
  echo "Apache Bench no está instalado."
  # Mensaje de aviso si falta la herramienta
fi
