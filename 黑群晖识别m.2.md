# 下载[libNVMEpatch.sh](https://raw.githubusercontent.com/lbq1121/jiaoben/files) 

下载libNVMEpatch.sh并上传至群晖DATA文件夹

## 方案一

### SSH登录后使用脚本

```
sudo -i 
```

找到你的共享文件夹比如DATA， 我这里以/volume1/DATA演示

```shell
cd /usr/local/etc/rc.d/
cp /volume1/DATA/libNVMEpatch.sh .
chmod 755 libNVMEpatch.sh
```

退出SSH

注意这里libNVMEpatch.sh在rc.d目录下， 已经成了一个自启动执行文件， 但其实这主要是防止一些小版本升级不小心改到了Nvme驱动二进制文件， 把patch覆盖了。 如果你能忍住不升级， 只执行一次也是可以的

接下来就是重启黑群， 再次开机后，登陆DSM，打开“存储空间管理员”， 可以看到HDD/SSD栏下面， 赫然已经认出了Nvme缓存设备！！

## 方案二

### SSH登录后使用脚本

```
sudo -i 
```

找到你的共享文件夹比如DATA， 我这里以/volume1/DATA演示

```shell
bash /volume1/DATA/libNVMEpatch.sh 
```

执行之后会自动生成Nvme驱动二进制文件,不升级的话就可以一直用

接下来就是重启黑群， 再次开机后，登陆DSM，打开“存储空间管理员”， 可以看到HDD/SSD栏下面， 赫然已经认出了Nvme缓存设备！

## 方案三

### 上传libNVMEpatch.sh至DATA后新建计划任务->用户自定义脚本

### 在用户自定义的脚本文本框里面粘贴如下脚本：

```
bash /volume1/DATA/libNVMEpatch.sh 
```

### 添加之后执行一次

执行之后会自动生成Nvme驱动二进制文件,不升级的话就可以一直用

接下来就是重启黑群， 再次开机后，登陆DSM，打开“存储空间管理员”， 可以看到HDD/SSD栏下面， 赫然已经认出了Nvme缓存设备！

### 当认出Nvme缓存设备后删除计划任务