FROM nginx:alpine

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy our custom configuration into the container
COPY nginx.conf /etc/nginx/conf.d/

# Copy your website content
COPY . /usr/share/nginx/html

# Inform Docker that we listen on 8080
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
