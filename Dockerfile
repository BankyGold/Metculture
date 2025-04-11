FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy only necessary files (exclude Dockerfile, .git, etc.)
COPY index.html ./
COPY css/ ./css/
COPY js/ ./js/
COPY images/ ./images/

# Remove default Nginx config (optional)
RUN rm /etc/nginx/conf.d/default.conf

# Custom Nginx config (optional)
COPY nginx-custom.conf /etc/nginx/conf.d/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
