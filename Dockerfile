FROM node:20-slim

WORKDIR /app

# Install PM2
RUN npm install -g pm2

# Copy package files
COPY package.json package-lock.json* ./

# Install dependencies
RUN npm install --omit=dev

# Copy source code
COPY . .

# Expose port (matches PORT=3000 in .env.example)
EXPOSE 3000

# Start both gateway and wake-up via PM2
CMD ["pm2-runtime", "ecosystem.config.js"]
