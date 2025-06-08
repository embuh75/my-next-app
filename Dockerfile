# syntax=docker/dockerfile:1

# Comments are provided throughout this file to help you get started.
# If you need more help, visit the Dockerfile reference guide at
# https://docs.docker.com/go/dockerfile-reference/

# Want to help us make this template better? Share your feedback here: https://forms.gle/ybq9Krt8jtBL3iCk7

# gunakan node versi 18 sebagai base image
FROM node:18-alpine

# direktori aplikasi
WORKDIR /app

# copy package.json dan package-lock.json (jika ada)
COPY package*.json ./

# install dependensi
RUN npm install

# Copy file projek ke image.
COPY . .

# enviroment variabel
# ENV PORT=3000

RUN npm run build

# Expose the port that the application listens on.
EXPOSE 3000

# Run the application.
CMD ["npm", "start"]
