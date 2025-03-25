# Use a specific Nginx version for stability
FROM nginx:1.25.2

# Copy HTML files to Nginx's default directory
COPY html/ /usr/share/nginx/html/

# Ensure correct permissions (optional, but recommended)
RUN chmod -R 755 /usr/share/nginx/html

# Expose port 80 for incoming traffic
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
