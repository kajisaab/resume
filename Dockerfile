# Use nginx alpine image for a lightweight container
FROM nginx:latest

# Set maintainer information
LABEL maintainer="Aman Khadka"
LABEL description="Resume website for Aman Khadka - Senior Full Stack Engineer"

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy our resume website files to nginx html directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx when container launches
CMD ["nginx", "-g", "daemon off;"]