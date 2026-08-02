FROM node:20-slim

WORKDIR /app

# Copy package files
COPY package.json ./

# Install dependencies (works with or without package-lock.json)
RUN npm install --omit=dev || npm install

# Copy source code
COPY . .

# Expose port (matches PORT=3000 in .env.example)
EXPOSE 3000

# Start the gateway server
CMD ["node", "server.js"]
