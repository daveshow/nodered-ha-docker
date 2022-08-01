FROM nodered/node-red:latest-18-minimal

RUN npm install --no-optional node-red-contrib-actionflows@2.1.2 \
    node-red-contrib-home-assistant-websocket@0.43.1 \
    node-red-contrib-stoptimer@0.0.7 \
    node-red-contrib-time-range-switch@1.1.3 \
    node-red-contrib-timecheck@1.1.0 \
    node-red-contrib-influxdb@0.6.1 \
    node-red-contrib-cast@0.2.17 \
    node-red-node-timeswitch@0.1.0 && \
    npm audit fix && \
    npm cache clean --force
