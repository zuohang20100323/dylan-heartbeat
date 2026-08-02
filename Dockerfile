FROM node:20-slim
WORKDIR /app
COPY package*.json ./
RUN npm install --omit=dev && npm cache clean --force
COPY start.sh ./
COPY . .
RUN chmod +x start.sh
EXPOSE 3000
CMD ["./start.sh"]
