# This project is a branch project of icret/EasyImages2.0, the Docker version of EasyImage

### [中文](https://github.com/DDSRem/easyimage/blob/master/README.md) | English
## Project Introduction
https://github.com/icret/EasyImages2.0
## Download
DockerHub:https://hub.docker.com/r/ddsderek/easyimage
## Deployment method
``` bash 
docker run -itd \
  --name easyimage \
  -p 8080:80 \
  -v /root/data/docker_data/easyimage/config:/data/wwwroot/config/ \
  -v /root/data/docker_data/easyimage/i:/data/wwwroot/i/ \
  ddsderek/easyimage
```
