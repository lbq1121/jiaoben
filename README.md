## 脚本索引
[ssrmu.sh](#ssrmush)
  

[***盒子一键脚本***](#盒子一键脚本)


[***探针一键脚本***](#探针一键脚本)


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