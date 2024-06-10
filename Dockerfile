# 使用指定版本的 Node.js 作为基础镜像
FROM node:16.20.2

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json（如果有）
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 复制所有项目文件到工作目录
COPY . .

# 暴露应用运行的端口（假设你的 Vue 应用在端口 8080 上运行）
EXPOSE 9528

# 启动应用
CMD ["npm", "run", "dev"]

