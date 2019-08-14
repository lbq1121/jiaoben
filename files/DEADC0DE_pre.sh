#! /bin/sh
#
# GoogleFu pre hook script
# Called before GoogleFu startup (also before config file generated).
#
# Copyright (C) 2018 sh4d0walker <sh4d0walker@Sh4d0Walker-Arch-i7>

logger -t "[pre_DEADC0DE]" "ssr pre started..."

#check ssr exists or not, if not ,download from web server ...
#download and uncompress to  /tmp/googlefu/
which curl
if [ "$?" != "0" ]; then
	url1='wget -T 60 http://files.80x86.io/router/rom/opt/google-fu/bin/ssr.tar.bz2'
	url2='wget -T 200 http://router.mirror1.80x86.io:8088/opt/google-fu/bin/ssr.tar.bz2'
	else
	url1='curl --connect-timeout 60 -o ssr.tar.bz2 http://files.80x86.io/router/rom/opt/google-fu/bin/ssr.tar.bz2'
	url2='curl --connect-timeout 200 -o ssr.tar.bz2 http://router.mirror1.80x86.io:d8088/opt/google-fu/bin/ssr.tar.bz2'
fi

mkdir -p /tmp/googlefu/
cd /tmp/googlefu/
md5sum -s -c md5sum.txt
if [ "$?" != "0" ]; then
	$url1
	tar -jxvf ssr.tar.bz2
	rm -r ssr.tar.bz2
	md5sum -s -c md5sum.txt
	if [ "$?" != "0" ]; then
		$url2
		tar -jxvf ssr.tar.bz2
		rm -r ssr.tar.bz2
		md5sum -s -c md5sum.txt
		if [ "$?" != "0" ]; then
		logger -t "[pre_DEADC0DE]" "ssr下载地址失效"
    $url1
	  tar -jxvf ssr.tar.bz2
	  rm -r ssr.tar.bz2
		fi
	fi
fi

nvram settmp google_fu_ssr=1

cur_node=$(nvram get ss_current_node_addr)
case $cur_node in
#第一个节点的配置信息，111.111.111.111改为你自己的第一个节点的SSR IP地址，可以为域名
    "111.111.111.111")
        nvram settmp ssr_udp_timeout=60
        nvram settmp ssr_protocol=auth_aes128_md5
        nvram settmp ssr_protocol_param=1764:3CabL8
        nvram settmp ssr_obfs=http_simple
        nvram settmp ssr_obfs_param=HK2SCH13001fd0e1764.wns.windows.com
        nvram settmp ssr_redirect=
      ;;
#第二个节点的配置信息，222.222.222.222改为你自己的第二个节点的SSR IP地址，可以为域名
    "222.222.222.222")
        nvram settmp ssr_udp_timeout=60
        nvram settmp ssr_protocol=协议2
        nvram settmp ssr_protocol_param=协议参数2
        nvram settmp ssr_obfs=混淆2
        nvram settmp ssr_obfs_param=混淆参数2
        nvram settmp ssr_redirect=
    ;;
#第三个节点的配置信息，333.333.333.333改为你自己的第三个节点的SSR IP地址，可以为域名
    "333.333.333.333")
        nvram settmp ssr_udp_timeout=60
        nvram settmp ssr_protocol=协议3
        nvram settmp ssr_protocol_param=协议参数3
        nvram settmp ssr_obfs=混淆3
        nvram settmp ssr_obfs_param=混淆参数3
        nvram settmp ssr_redirect=
    ;;
esac

func_replace_bin() {
  local bin_name=$1
  mount | grep -q google-$bin_name
  if [ "$?" != "0" ]; then
    mount --bind /tmp/googlefu/ssr-$bin_name /usr/sbin/google-$bin_name
  fi
}

func_replace_bin redir
func_replace_bin local


logger -t "[pre_DEADC0DE]" "ssr pre done."