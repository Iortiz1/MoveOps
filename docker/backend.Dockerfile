FROM python:3.11-slim

# Carpeta de trabajo
WORKDIR /app

COPY backend/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos todo el backend
COPY backend/ .

# Exponemos el puerto
EXPOSE 8000

# Comando para arrancar la app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

