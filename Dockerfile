#需要依赖的镜像
FROM node

#创建工作目录
RUN mkdir -p /usr/src/app

#与docker进行交互时，默认会进入此目录，进行docker的命令如下
#docker exec -it <container id> /bin/bash
WORKDIR /usr/src/app

#COPY file
COPY package.json /usr/src/app/
RUN npm install

#
COPY . /usr/src/app
EXPOSE 22

#默认会运行的命令
CMD [ "npm", "start" ]
