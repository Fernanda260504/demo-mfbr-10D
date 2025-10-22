# Usa la imagen base de Nginx
FROM nginx:alpine

# Elimina los archivos por defecto
RUN rm -rf /usr/share/nginx/html/*

# 1. Copia el archivo principal (index.html) a la RAÍZ de Nginx
COPY index.html /usr/share/nginx/html/

# 2. Copia la carpeta 'views/' (con hobbies.html y logros.html) a la RAÍZ de Nginx.
# Esto hace que las rutas de navegación como '/views/hobbies.html' sigan funcionando.
COPY views/ /usr/share/nginx/html/views/

# 3. Copia la carpeta 'css/' (con tus estilos) a la carpeta 'css/' de Nginx.
COPY css/ /usr/share/nginx/html/css/

# 4. Copia la carpeta 'src/' (donde tienes todas tus imágenes) a la carpeta 'src/' de Nginx.
# Esto hace que las rutas de imagen como '/src/born_to_die.jpeg' funcionen.
COPY src/ /usr/share/nginx/html/src/

EXPOSE 81