FROM node:23 AS builder
WORKDIR /usr/src/node-red
COPY package.json ./
RUN npm install --omit=optional && \
    npm cache clean --force

FROM nodered/node-red:3.1.15-16-minimal
WORKDIR /usr/src/node-red
COPY --from=builder --chown=node-red:node-red /usr/src/node-red/node_modules ./node_modules
COPY . .
