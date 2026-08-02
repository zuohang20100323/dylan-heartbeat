FROM node:20-slim

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

# Simple shell wrapper: exec node (PID 1 = node, signals work correctly)
CMD ["sh", "-c", "node server.js"]
