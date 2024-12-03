# Usa una imagen base de Python
FROM python:3.9

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos del proyecto al contenedor
COPY . /app
COPY requirements.txt /app/

# Instala las dependencias
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install flask

# Expone el puerto que usará Flask
EXPOSE 5050

# Comando para ejecutar la aplicación Flask
CMD ["python", "app.py"]
