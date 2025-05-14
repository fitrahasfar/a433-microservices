# Menginstall nodejs:18
FROM node:18-alpine

# Menempatkan direktori kerja ke dalam container
WORKDIR /app

# Copy file package.json dan package-lock.json
COPY package*.json ./

# Install npm
RUN npm install

# Copy semua file ke dalam direktory yang ada di container
COPY . .

# Mengekspos port 3000 untuk aplikasi Shipping Service
EXPOSE 3001

# Menjanankan perintah CMD untuk nodejs
CMD ["node", "index.js"]
