# Gunakan image Node-RED terbaru sebagai base image
FROM nodered/node-red:latest  

# Set direktori kerja
WORKDIR /data

# Salin file package.json
COPY package.json .

# Salin file entrypoint.sh tanpa chmod
COPY entrypoint.sh /entrypoint.sh

# Jalankan entrypoint menggunakan shell langsung
CMD ["sh", "/entrypoint.sh"]
