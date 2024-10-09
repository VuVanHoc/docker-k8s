# Sử dụng một base image với Node.js
FROM node:18-alpine

# Thiết lập thư mục làm việc trong container
WORKDIR /usr/src/app

# Copy file package.json và package-lock.json
COPY package*.json ./

# Cài đặt các dependencies
RUN npm install --production

# Copy toàn bộ source code vào container
COPY . .

# Build dự án (nếu bạn sử dụng TypeScript)
RUN npm run build

# Expose port mà NestJS sẽ chạy
EXPOSE 3000

# Khởi động ứng dụng
CMD ["npm", "run", "start:prod"]
