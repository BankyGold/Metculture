FROM nginx:alpine

# Copy static files into nginx's default public directory
COPY . /usr/share/nginx/html

# Expose port
EXPOSE 80

# Add a custom health check (optional)
HEALTHCHECK CMD curl --fail http://localhost/ || exit 1

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
