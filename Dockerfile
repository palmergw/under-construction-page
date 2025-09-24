# Use a lightweight Nginx base image
FROM nginx:alpine

# Copy your under-construction page into the Nginx web root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80, the default HTTP port for Nginx
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
