#Aqui se dice que versión se va a utilizar
FROM python:3.7.11-slim

# Aqui creamos las nuevas carpetas dentro del contenedor
WORKDIR  /python-api

#Instalamos las dependencias
COPY requirements.txt requirements.txt

#Ejecutamos las dependencias
RUN pip install -r requirements.txt

#Copiamos los archivos en el contenedor
COPY . .

# Comando que se ejecuta al iniciar el contenedor
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
