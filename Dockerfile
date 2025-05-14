# Menggunakan nodejs:18
FROM node:18-alpine

# Menempatkan direktori kerja ke dalam container
WORKDIR /app

# Copy file package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Menginstal semua dependensi dalam package.json
RUN npm install

# Copy semua file dari lokal ke dalam direktori kerja di container
COPY . .

# Mengekspos port 3000 untuk aplikasi Order Service
EXPOSE 3000

# Menjalankan aplikasi menggunakan CMD
CMD ["node", "index.js"]
