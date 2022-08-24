FROM nginx:latest

# COPY nginx.conf /etc/nginx/conf.d/nginx.conf
RUN rm -r /etc/nginx/conf.d/*
COPY nginx-app.conf /etc/nginx/conf.d

# EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]