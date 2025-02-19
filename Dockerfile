# Gunakan image Node-RED terbaru sebagai base image
FROM nodered/node-red:latest  

# Set direktori kerja
WORKDIR /data

# Salin file package.json
COPY package.json .

# Salin file entrypoint.sh ke dalam container
COPY entrypoint.sh /data/entrypoint.sh

# Jalankan entrypoint menggunakan shell
CMD ["sh", "/data/entrypoint.sh"]
