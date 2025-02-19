# Gunakan image Node-RED terbaru sebagai base image
FROM nodered/node-red:latest  

# Set direktori kerja
WORKDIR /data

# Salin file package.json
COPY package.json .

# Salin file entrypoint.sh dan langsung berikan izin eksekusi
COPY --chmod=+x entrypoint.sh /entrypoint.sh

# Jalankan entrypoint
ENTRYPOINT ["/entrypoint.sh"]
