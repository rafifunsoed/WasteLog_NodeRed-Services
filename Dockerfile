# Gunakan image Node-RED terbaru sebagai base image
FROM nodered/node-red:latest  

# Set direktori kerja
WORKDIR /data

# Salin file package.json
COPY package.json .

# Salin file entrypoint.sh
COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

# Jalankan entrypoint
ENTRYPOINT ["/entrypoint.sh"]
