@echo off
rem %1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 rem ","","runas",1)(window.close)&&exit
chcp 65001>nul
color 2f
title PT站一键登陆签到
start https://www.pthome.net/attendance.php
echo 打开pt家完成
start https://pterclub.com/attendance.php
echo 打开猫站完成
start https://www.htpt.cc/attendance.php
echo 打开海棠(戏曲)完成
start https://hdhome.org/attendance.php
echo 打开HDH完成
start https://ourbits.club/attendance.php
echo 打开我堡完成
start https://www.nicept.net/attendance.php
echo 打开老师(大姐姐)完成
start https://pt.soulvoice.club/attendance.php
echo 打开铃音Club完成
start https://open.cd/torrents.php
echo 打开皇后(音乐)完成
start https://1ptba.com/attendance.php
echo 打开1ptba完成
start https://chdbits.co/bakatest.php
echo 打开彩虹岛(签到页)完成
start https://yingk.com/bakatest.php
echo 打开yingk(签到页)完成
start https://u2.dmhy.org/showup.php
echo 打开幼儿园(签到页)完成
start https://springsunday.net/torrents.php
echo 打开春天完成
start https://pt.m-team.cc/adult.php
echo 打开馒头(大姐姐分区)完成
start https://pt.keepfrds.com/torrents.php
echo 打开朋友完成
start https://nanyangpt.com/torrents.php
echo 打开南洋完成
start https://pt.hdbd.us/torrents.php
echo 打开伊甸园完成
start https://www.tjupt.org/torrents.php
echo 打開北洋园完成
start https://avgv.cc/AV.php
echo 打开avgv完成
start https://www.hitpt.com/music.php
echo 打開百川pt完成
msg %username% /w /time:3600 "已完成签到任务,更多小工具可访问小沐的博客 www.818512.xyz "
rem timeout /t 20 /nobreak
rem 休眠20秒无操作
rem taskkill /f /t /im chrome.exe
rem 强制关闭chrome浏览器(chorme.exe可更改为其他默认浏览器程序名)
rem 将”start “替换为"start microsoft-edge:"即可调用edge浏览器
rem echo 按任意键结束
rem pause>nul