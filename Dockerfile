FROM nodered/node-red:latest

WORKDIR /data
COPY package.json .
RUN npm install --only=production

EXPOSE 1880
CMD ["npm", "start", "--", "--userDir", "/data"]
