## 脚本索引

* [ ssrmu.sh ](#ssrmush)
  
* [  盒子一键脚本  ](#盒子一键脚本)


* [  探针一键脚本  ](#探针一键脚本)


* [ transmission汉化一键脚本  ](#transmission )


* [  frp一键脚本](#frp)
  * [  服务端一键脚本](#服务端一键脚本)
  * [  更新和卸载](#更新和卸载)
  * [  群晖官网文档](#群晖官网文档)

* [ 群晖去除更新小红点 ](#群晖小红点)

* [filebrowser](#filebrowser)

* [ TCP优化 ](#bbr 原版/魔改/plus+锐速 四合一脚本)
---
## ssrmu.sh


#### 下载安装:
``` bash
wget -N --no-check-certificate https://github.com/lbq1121/doubi/raw/master/ssrmu.sh && chmod +x ssrmu.sh && bash ssrmu.sh
```

---
## 盒子一键脚本


```
bash <(wget --no-check-certificate -qO- https://github.com/Aniverse/inexistence/raw/master/inexistence.sh)
```

- 一键安装deluge 隐藏选项 21，是可以跳过校验、全磁盘预分配的 1.3.15 版本
使用修改版客户端、跳过校验 存在风险，后果自负
- 一键安装Transmission 隐藏选项 11 和 12，分别对应可以跳过校验、无文件打开数限制的 2.92、2.93 版本


## 探针一键脚本

```
wget https://raw.githubusercontent.com/lbq1121/ServerStatus-Hotaru/master/status.sh && chmod +x status.sh
```

客户端管理菜单
```
bash status.sh c
```

服务端管理菜单
```
bash status.sh s
```

## transmission 

transmission-web汉化一键脚本

```
wget https://github.com/ronggang/transmission-web-control/raw/master/release/install-tr-control-cn.sh
bash install-tr-control-cn.sh
```

## frp

### 服务端一键脚本

```
wget --no-check-certificate https://raw.githubusercontent.com/clangcn/onekey-install-shell/master/frps/install-frps.sh -O ./install-frps.sh
chmod 700 ./install-frps.sh
./install-frps.sh install
````

### 更新和卸载

```
./install-frps.sh update

./install-frps.sh uninstall

```

### 群晖官网文档

```
https://www.synology.com/zh-cn/knowledgebase/DSM/tutorial/Network/What_network_ports_are_used_by_Synology_services
```
## 群晖小红点

```
https://github.com/lbq1121/jiaoben/blob/master/%E7%BE%A4%E6%99%96%E5%8E%BB%E5%B0%8F%E7%BA%A2%E7%82%B9.md
```
## filebrowser

``` 
apt install curl && curl -fsSL https://filebrowser.xyz/get.sh | bash
```

### 配置


``` 
创建配置数据库：filebrowser -d /etc/filebrowser.db config init

设置监听地址：filebrowser -d /etc/filebrowser.db config set --address 0.0.0.0

设置监听端口：filebrowser -d /etc/filebrowser.db config set --port 8088

设置语言环境：filebrowser -d /etc/filebrowser.db config set --locale zh-cn

设置日志位置：filebrowser -d /etc/filebrowser.db config set --log /var/log/filebrowser.log

添加一个用户：filebrowser -d /etc/filebrowser.db users add root password --perm.admin，其中的root和password分别是用户名和密码，根据自己的需求更改。

有关更多配置的选项，可以参考官方文档：https://docs.filebrowser.xyz/

配置修改好以后，就可以启动 File Browser 了，使用-d参数指定配置数据库路径。示例：filebrowser -d /etc/filebrowser.db

启动成功就可以使用浏览器访问 File Browser 了，在浏览器输入 IP:端口，示例：http://192.168.1.1:8088

```


## bbr 原版/魔改/plus+锐速 四合一脚本

```

wget --no-check-certificate https://github.com/cx9208/Linux-NetSpeed/raw/master/tcp.sh && chmod +x tcp.sh && ./tcp.sh

```
