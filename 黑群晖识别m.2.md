# 下载[libNVMEpatch.sh](https://raw.githubusercontent.com/lbq1121/jiaoben/master/files/libNVMEpatch.sh) 

下载  https://github.com/lbq1121/jiaoben/raw/master/files/libNVMEpatch.sh 并上传至群晖DATA文件夹

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

注意这里libNVMEpatch.sh在rc.d目录下， 已经成了一个自启动执行文件， 但其实这主要是防止一些小版本升级不小心改到了Nvme驱动二进制文件， 把patch覆盖了。 

接着重启黑群晖， 再次开机后，登陆DSM，打开“存储空间管理员”， 可以看到HDD/SSD栏下面已经能认出了Nvme缓存设备！

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

接着重启黑群晖， 再次开机后，登陆DSM，打开“存储空间管理员”， 可以看到HDD/SSD栏下面已经能认出了Nvme缓存设备！

## 方案三

### 上传libNVMEpatch.sh至DATA后新建计划任务->用户自定义脚本

### 在用户自定义的脚本文本框里面粘贴如下脚本：

```
bash /volume1/DATA/libNVMEpatch.sh 
```

### 添加之后执行一次

执行之后会自动生成Nvme驱动二进制文件,不升级的话就可以一直用

重启黑群晖， 再次开机后，登陆DSM，打开“存储空间管理员”， 可以看到HDD/SSD栏下面已经能认出了Nvme缓存设备！

### 当认出Nvme缓存设备后删除计划任务

## 方案四 使用一键脚本 无需下载libNVMEpatch.sh

### SSH登录后使用脚本

```
sudo -i 
```

### 获取权限后执行脚本

```
wget --no-check-certificate https://github.com/lbq1121/jiaoben/raw/master/files/libNVMEpatch.sh && chmod +x libNVMEpatch.sh && ./libNVMEpatch.sh

```
执行之后会自动生成Nvme驱动二进制文件,不升级的话就可以一直用

重启黑群晖， 再次开机后，登陆DSM，打开“存储空间管理员”， 可以看到HDD/SSD栏下面已经能认出了Nvme缓存设备！



# 注意事项

- 原作者只保证对目前的DSM6.2 有效 ,如果你带着缓存升级， 之后Nvme驱动又变无效， 将会导致你的存储空间的对应缓存损毁， 存储空间不可用，
- 我只测试了黑群晖918 DSM6.22其余版本均未测试 大家需要自行测试
- 还没想到其他的 等想到再补充

# 参考来源

https://xpenology.com/forum/applications/core/interface/file/attachment.php?id=7679

http://www.gebi1.com/thread-295316-1-1.html