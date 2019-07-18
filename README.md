## 脚本索引
* [***代理相关***]
  * [ssrmu.sh](#ssrmush)
  

*[***盒子一键脚本***](#盒子一键脚本)


*[***探针一键脚本***](#探针一键脚本)


---
## ssrmu.sh

- 脚本说明: ShadowsocksR 一键安装管理脚本，支持流量控制
- 系统支持: CentOS6+ / Debian6+ / Ubuntu14+
- 使用方法: https://doub.io/ss-jc60/
- 项目地址: https://github.com/ToyoDAdoubiBackup/shadowsocksr

#### 脚本特点:
目前网上的各个ShadowsocksR脚本基本都是只有 安装/启动/重启 等基础功能，对于小白来说还是不够简单方便。既然是一键脚本，那么就要尽可能地简单，小白更容易接受使用！

- 支持 限制 用户速度
- 支持 限制 用户设备数
- 支持 限制 用户总流量
- 支持 定时 流量清零
- 支持 显示 当前连接IP
- 支持 显示 SS/SSR连接+二维码
- 支持 一键安装 锐速
- 支持 一键安装 BBR
- 支持 一键封禁 垃圾邮件(SMAP)/BT/PT

#### 下载安装:
``` bash
wget -N --no-check-certificate https://github.com/lbq1121/doubi/raw/master/ssrmu.sh && chmod +x ssrmu.sh && bash ssrmu.sh
```

---
## 盒子一键脚本
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

配置文件目录 
```
/usr/local/ServerStatus/server/config.json
```
