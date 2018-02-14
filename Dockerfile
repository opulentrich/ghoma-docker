FROM ubuntu:latest
RUN apt-get update && apt-get install -y npm
RUN npm install ghoma express mqtt
EXPOSE 3000
EXPOSE 4196
COPY ghoma /node_modules/ghoma
CMD cd /node_modules/ghoma && nodejs ghoma-mqtt-connect.js
