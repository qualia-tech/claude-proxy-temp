FROM nginx:alpine

# Copier la configuration nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

# Exposer le port 8080 (requis par IBM Cloud Foundry)
EXPOSE 8080

# Démarrer nginx
CMD ["nginx", "-g", "daemon off;"]