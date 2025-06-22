from fastapi import FastAPI  # Importa el framework FastAPI
import time                  # Para medir duración del cálculo

app = FastAPI()              # Crea la aplicación web

@app.get("/api/benchmark")   # Define la ruta GET
def benchmark():
    start = time.time()      # Guarda el tiempo inicial
    count = sum(1 for i in range(1, 10_000_000) if i % 2 == 0)  # Cuenta pares
    duration = time.time() - start  # Calcula cuánto tardó
    return {"even_numbers": count, "duration_seconds": duration}  # Devuelve el resultado

if __name__ == "__main__":   # Ejecuta solo si se llama directamente
    import uvicorn
    uvicorn.run("main:app", host="0.0.0.0", port=8000)  # Inicia el servidor en el puerto 8000