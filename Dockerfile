FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json .
RUN npm ci --only
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]