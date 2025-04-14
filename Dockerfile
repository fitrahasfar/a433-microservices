# Base image NodeJS 14
FROM node:14

# Menentukan directory working container
WORKDIR /app

# Seluruh source code harus disalin ke working directory dalam container
COPY . .

# Menentukan environment variable
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies production dan build
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port yang digunakan
EXPOSE 8080

# Jalankan server menggunakan perintah npm start
CMD ["npm", "start"]
