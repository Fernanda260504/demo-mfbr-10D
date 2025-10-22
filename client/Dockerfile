#Etapa 1:Construccion de los recursos 
FROM node:20 AS build 

WORKDIR /app

COPY package*.json ./

RUN npm install 

COPY . .
#/dist  /build (node)
RUN nmp run build
#Etapa 2 :Construccion de la imagen 
FROM nginx:alpine 
COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80
CMD ["nginx","g","daemon off;"]