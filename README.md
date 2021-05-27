## 简介

此项目是本人对bolo-fantastic进行了一些改造，包括样式和seo两方面。

个人站点：[小令童鞋](https://www.zeekling.cn/)

## 使用

- 将本项目下载到：`/dockerData/bolo/bolo-fantastic`下面

- 将[https://git.zeekling.cn/linux/dockerFiles/src/branch/master/bolo](https://git.zeekling.cn/linux/dockerFiles/src/branch/master/bolo)
  下面的dockerFiles和 settings.xml放置到博客bolo-solo的下面，执行下面命令编译并导出镜像：

  ```sh
 docker build -t "zeek/bolo" .
 docker save -o /tmp/zeek_bolo.tar zeek/bolo
  ```
- 将`/tmp/zeek_bolo.tar`上传到服务器`/tmp`目录下面，并且导入：
```sh
docker load --input=/tmp/zeek_bolo.tar
```

- 参照下面脚本新建bolo镜像。
```sh
docker stop bolo
docker rm bolo
docker run --detach --name bolo --network=host  \
    --env RUNTIME_DB="MYSQL" \
    --env JDBC_USERNAME="root" \
    --env JDBC_PASSWORD="123456" \
    --env JDBC_DRIVER="com.mysql.cj.jdbc.Driver" \
	--env SERVER_HOST="www.zeekling.cn" \
	--env SERVER_PORT="443" \
    --env JDBC_URL="jdbc:mysql://127.0.0.1:3306/solo?useUnicode=yes&characterEncoding=UTF-8&allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC" \
    -v /dockerData/bolo/bolo-fantastic:/opt/bolo/skins/bolo-fantastic \
    zeek/bolo --listen_port=8080 --server_scheme=https --server_host=www.zeekling.cn --lute_http=http://127.0.0.1:8249 \
```

## 个站样式

首页显示：
![https://pan.zeekling.cn/oit_2020-09-20_14-32.png](https://pan.zeekling.cn/oit_2020-09-20_14-32.png)

页脚显示：
![202009201434.png](https://pan.zeekling.cn/713_2020-09-20_14-34.png)

友链显示：

![202009201435.png](https://pan.zeekling.cn/46U_2020-09-20_14-35.png)


