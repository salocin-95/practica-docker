#!/bin/bash
# Script para mostrar uso de recursos del contenedor

echo "### Docker Stats ###"
# Imprime un título en consola

docker stats microtest --no-stream --format "CPU: {{.CPUPerc}}, RAM: {{.MemUsage}}"
# Muestra el uso de CPU y RAM del contenedor 'microtest' (una sola vez)