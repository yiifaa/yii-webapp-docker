# yii-webapp-docker
> 基于Express框架的 Web Docker项目,基于Docker for Windows构建与发布。

## 1. 构建Docker
``` bash
# 构建docker镜像
docker build -t "yiifaa/express" .
# 查看所有的Docker镜像,确认创建是否成功
docker images
```

## 2. 启动Docker
``` bash
# 启动时使用端口映射
docker run -p 10080:8080 yiifaa/express
# 查看启动的docker镜像(docker容器)，注意其中的“CONTAINER ID”项，之后交互时还会用到
docker ps 
```
出现如下提示信息，则表示发布成功<br/>
``` text
> express-docker@1.0.0 start /usr/src/app
> node app.js
Running on http://localhost:8080
```  
在浏览器地址栏中输入http://localhost:10080，即可访问到WEB服务

## 3. 与Docker交互
``` bash
# 进入Docker容器，可执行Linux Shell命令,9f3ec8b6408a为镜像对应的“CONTAINER ID”(可通过docker ps命令获取)。
 docker exec -it 9f3ec8b6408a /bin/bash
```


## Docker版本
> Docker version 1.12.0-rc3, build 91e29e8, experimental


