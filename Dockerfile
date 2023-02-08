FROM nodered/node-red:latest-16-minimal

RUN npm install --omit=optional \
    node-red-contrib-actionflows@2.1.2 \
    node-red-contrib-home-assistant-websocket@0.48.1 \
    node-red-contrib-stoptimer@0.0.7 \
    node-red-contrib-time-range-switch@1.2.0 \
    node-red-contrib-timecheck@1.1.0 \
    node-red-contrib-influxdb@0.6.1 \
    node-red-contrib-cast@0.2.17 \
    node-red-node-timeswitch@1.0.0 && \
    # npm audit fix && \
    npm cache clean --force
