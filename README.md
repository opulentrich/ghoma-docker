Docker file to run the ghoma npm daemon

Original work here :
https://community.openhab.org/t/g-homa-wifi-smart-socket-emw302wf-and-emw302wfo-with-openhab2/21524

Quickstart commands:

docker run -d -p 3001:3000 -p 4196:4196 -n ghoma-proxy opulentrich/ghoma-proxy
docker exec ghoma-proxy nodejs /node_modules/ghoma/config.js ....

Transform for openhab in openhab-transforms/

If you want to build the container, then :-
docker build -t ghoma-proxy:latest .

Example openhab item with the new transform:
Switch GHoma1 "G-Homa Socket 1" { http=">[ON:GET:http://192.168.201.1:3000/on/621394] >[OFF:GET:http://192.168.201.1:3000/off/621394] <[http://192.168.201.1:3000/state/621394:10000:JS(ghoma.js)]" }
