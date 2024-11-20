# Use the official Nginx base image
FROM nginx:latest

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the index.html file to the Nginx directory (you can place your custom index.html in the same directory as your Dockerfile)
COPY ./index.html /usr/share/nginx/html/

# Expose port 80 to make the server accessible
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
