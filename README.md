# Trabajo Práctico Integrador – Virtualización y Docker Benchmark

# 🧾 Autores
**Alumnos:** Rodrigo Nicolás, Gonzalo Nuñez

**Email:** renicolas7@gmail.com - gonza_emmanuel@hotmail.com.ar

**Trabajo presentado para:** Arquitectura y Sistemas Operativos

**Profesor:** Mauricio Gabriel Pasti

**Fecha de entrega:** 22 de junio de 2025

## 📌 Descripción

Este proyecto forma parte del Trabajo Práctico Integrador para la materia **Arquitectura y Sistemas Operativos**. Tiene como objetivo analizar el rendimiento de un microservicio Docker desplegado en diferentes entornos virtualizados:

- Cloud Shell de Google
- Máquina Virtual en Azure
- Servidor Ubuntu local
- Sistema Windows con Docker Desktop

Se realizó un benchmark con herramientas como `ab` (Apache Benchmark), `curl`, y `docker stats` para medir:

- Latencia promedio por request
- Requests por segundo (RPS)
- Consumo de CPU y RAM

---

## 🧪 Entornos evaluados

| Entorno        | Latencia (s) | Req/s | CPU (%) | RAM (MiB) |
|----------------|--------------|--------|----------|------------|
| Cloud Shell    | 0.68         | 1.38   | 0.18     | 33.28      |
| Azure VM       | 0.42         | 2.34   | 0.08     | 34.46      |
| Ubuntu Server  | 0.52         | 2.26   | 0.19     | 38.08      |
| Windows Local  | 0.43         | 2.23   | 0.12     | 33.10      |

---

## ⚙️ Estructura del proyecto

```plaintext
practica-docker/
│
├── app/
│ ├── main.py
│ └── requirements.txt
│
├── Dockerfile
├── docker-compose.yml
├── benchmark/
│ ├── benchmark.sh
│ └── stress_test.sh (opcional)
│ └── collect_stats.sh (opcional)
│
└── README.md
```

---

## 🚀 Pasos para ejecutar el benchmark

1. Clonar el repositorio en el entorno deseado.
2. Instalar Docker y `ab` (`apache2-utils` en Ubuntu).
3. Ejecutar el benchmark:

```bash
cd benchmark
./benchmark.sh
```

Este script realiza:

docker pull de la imagen desde Docker Hub

docker run del contenedor

Latencia con curl

Carga con ab

Métricas de uso con docker stats

---

# 🧠 Conclusión General
Se evaluaron cuatro entornos ejecutando el mismo microservicio en Docker para comparar rendimiento:

- Azure VM fue el entorno más eficiente, con la mejor combinación de baja latencia, alto throughput y mínimo uso de CPU.

- Windows Local tuvo un rendimiento muy similar, ideal para desarrollo con buen hardware.

- Ubuntu Server ofreció un balance sólido, excelente para pruebas locales controladas.

- Cloud Shell fue el menos confiable para cargas moderadas, útil solo para pruebas rápidas o educativas.

Estos resultados demuestran que Docker permite comparar entornos de forma justa y reproducible, facilitando decisiones informadas de despliegue.

---

# 🎥 Video Explicativo 

[Click acá](https://youtu.be/Qfdi9IFFN_M)