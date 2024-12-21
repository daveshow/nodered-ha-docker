FROM nodered/node-red:3.1.15-16-minimal

WORKDIR /usr/src/node-red

COPY package.json ./

RUN npm install --omit=optional && \
    npm cache clean --force
