FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy only necessary files (exclude Dockerfile, .git, etc.)
COPY index.html ./

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
