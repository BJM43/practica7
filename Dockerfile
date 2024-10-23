# Utiliza la imagen de Node.js como base
FROM node:14

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo package.json e instala las dependencias
COPY package.json /app
RUN npm install

# Copia el resto del código de la aplicación
COPY . /app

# Expone el puerto 3000 en el contenedor
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["npm", "start"]