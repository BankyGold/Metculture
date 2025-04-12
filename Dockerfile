# Use official nginx image
FROM nginx:alpine

# Copy static files into nginx's default public directory
COPY . /usr/share/nginx/html

# Expose port
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
