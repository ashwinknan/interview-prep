FROM nginx:alpine

# Copy all your static files into the Nginx serve directory
COPY . /usr/share/nginx/html

# Update Nginx config to listen on port 8080 (Cloud Run requirement)
RUN sed -i 's/listen\(.*\)80;/listen 8080;/' /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]