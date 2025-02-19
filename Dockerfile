# Gunakan image Node-RED terbaru
FROM nodered/node-red:latest  

# Set direktori kerja
WORKDIR /data

# Salin semua file yang dibutuhkan
COPY package.json .
COPY entrypoint.sh /entrypoint.sh

# Beri izin eksekusi untuk entrypoint
RUN chmod +x /entrypoint.sh

# Jalankan entrypoint
ENTRYPOINT ["/entrypoint.sh"]
