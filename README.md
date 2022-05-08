# 本项目是icret/EasyImages2.0的分支项目，Docker版本的EasyImage

### 中文 | [English](https://github.com/DDSRem/easyimage/blob/master/README-English.md)
## 项目介绍
https://github.com/icret/EasyImages2.0
## 下载
DockerHub https://hub.docker.com/r/ddsderek/easyimage
## 部署
``` bash 
docker run -itd \
  --name easyimage \
  -p 8080:80 \
  -v /root/data/docker_data/easyimage/config:/app/web/config \
  -v /root/data/docker_data/easyimage/i:/app/web/i \
  ddsderek/easyimage
```
docker-compose
```
version: '3.3'
services:
  easyimage:
    image: ddsderek/easyimage
    container_name: easyimage
    ports:
      - '8080:80'
    volumes:
      - '/root/data/docker_data/easyimage/config:/app/web/config'
      - '/root/data/docker_data/easyimage/i:/app/web/i'
    restart: unless-stopped
```
