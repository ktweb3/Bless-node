# 使用官方 Node.js 镜像作为基础镜像
FROM node:14

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json
COPY package*.json ./

# 安装依赖
RUN npm install

# 复制其余的应用程序代码
COPY . .

# 暴露应用程序的端口（如果需要）
# EXPOSE 3000

# 执行 index.js
CMD ["node", "index.js"]