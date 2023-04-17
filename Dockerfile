FROM node:18.16

# 将当前目录复制到容器中的/data目录
COPY . /data

# 安装Python依赖项
RUN cd /data && npm install

WORKDIR /data

ENV http_proxy http://192.168.6.1:8088/
ENV https_proxy http://192.168.6.1:8088/

# 暴露容器的3000端口
EXPOSE 3000

# 启动命令
CMD ["npm", "run", "dev"]