Docker file to run the ghoma npm daemon

Original work here :
https://community.openhab.org/t/g-homa-wifi-smart-socket-emw302wf-and-emw302wfo-with-openhab2/21524

Quickstart commands:

docker build -t ghoma-proxy:latest .
docker run -d -p 3001:3000 -p 4196:4196 -n ghoma-proxy ghoma-proxy:latest

docker exec ghoma-proxy nodejs /node_modules/ghoma/config.js ....

Transform for openhab in openhab-transforms/
