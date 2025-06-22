#!/bin/bash

# Nombre de la imagen que se va a usar
IMAGE="rodrigonicolas/mi-app:1.0"
PORT=8000

echo "### Docker Pull ###"

# Mide cuánto tarda en descargar la imagen desde Docker Hub
START_PULL=$(date +%s)
docker pull $IMAGE
END_PULL=$(date +%s)
PULL_TIME=$((END_PULL - START_PULL))
echo "Pull time: $PULL_TIME seconds"

echo "### Docker Run ###"

# Mide cuánto tarda en levantar el contenedor
START_RUN=$(date +%s)
docker run -d --rm --name microtest -p $PORT:8000 $IMAGE
sleep 2  
END_RUN=$(date +%s)
RUN_TIME=$((END_RUN - START_RUN))
echo "Run time: $RUN_TIME seconds"

echo "### Latencia Promedio ###"

# Ejecuta una petición al endpoint para ver el tiempo de respuesta (latencia simple)
curl -s -w "Tiempo total: %{time_total}s\n" -o /dev/null http://localhost:$PORT/api/benchmark

# Lanza el test de carga y la recolección de métricas
bash stress_test.sh
bash collect_stats.sh

# Detiene el contenedor al final
docker stop microtest