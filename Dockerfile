FROM nodered/node-red:latest-16-minimal

RUN npm install --no-optional node-red-contrib-actionflows \
    node-red-contrib-home-assistant-websocket \
    node-red-contrib-stoptimer \
    node-red-contrib-time-range-switch \
    node-red-contrib-timecheck \
    node-red-contrib-influxdb \
    node-red-contrib-cast \
    node-red-node-timeswitch && \
    npm audit fix && \
    npm cache clean --force