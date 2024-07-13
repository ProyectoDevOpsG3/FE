# Usa una imagen base con Node.js para construir la aplicación
FROM node:alpine as build

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de tu aplicación React al contenedor
COPY . .

# Instala las dependencias y compila la aplicación
RUN npm install
RUN npm run build


# Expone el puerto 80 para que la aplicación sea accesible
EXPOSE 4200

# Comando por defecto para ejecutar Nginx
CMD ["npm", "start"]

