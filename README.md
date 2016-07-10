# yii-webapp-docker
> 基于Express框架的 Web Docker项目,基于Docker for Windows构建与发布。

## 构建Docker
``` bash
docker build -t "yiifaa/express" .
# 查看所有的Docker镜像,确认创建是否成功
docker images
```

## 启动Docker
``` bash
# 启动时使用端口映射
docker run -p 10080:8080 yiifaa/express
# 查看启动的docker
docker ps 
```
出现如下提示信息，则表示发布成功<br/>
``` text
> express-docker@1.0.0 start /usr/src/app
> node app.js
Running on http://localhost:8080
```  
在浏览器地址栏中输入http://localhost:10080，即可访问到WEB服务


## Docker版本
> Docker version 1.12.0-rc3, build 91e29e8, experimental


