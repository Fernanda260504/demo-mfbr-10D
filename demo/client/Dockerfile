# Etapa 1: Construcción de los recursos
FROM node:20 AS build

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .
# Construir la aplicación (usa npm, no nmp)
RUN npm run build

# Etapa 2: Construcción de la imagen final
FROM nginx:alpine

# Copiar los archivos compilados al servidor Nginx
COPY --from=build /app/dist /usr/share/nginx/html

# Exponer el puerto 80 para acceder al sitio
EXPOSE 80

# Comando para mantener Nginx corriendo en primer plano
CMD ["nginx", "-g", "daemon off;"]
