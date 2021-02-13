#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.50.254/g' package/base-files/files/bin/config_generate
#删除chinadns-ng
#git clone https://github.com/Lienol/openwrt-package.git package/Lienol-package
#rm -rf feeds/lienol/package/chinadns-ng
#mv feeds/lienol/package/chinadns-ng package/cdns
#kenzok8
git clone https://github.com/kenzok8/openwrt-packages 
mv openwrt-packages/luci-app-ssr-plus/ tools/ssr
mv openwrt-packages/ package/kenzok8-package/
git clone https://github.com/kenzok8/small 
mv small/ package/small/
mv package/small/chinadns-ng/ tools/ng2
#vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git 
git clone https://github.com/jerrykuku/luci-app-vssr.git 
mv luci-app-vssr/ package/
mv lua-maxminddb/ package/
#jd
git clone https://github.com/jerrykuku/node-request.git
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git  
mv node-request/ package/
mv luci-app-jd-dailybonus/ package/
#luci-app-ipsec-vpnserver
#rm -rf feeds/lienol/lienol/luci-app-ipsec-vpnserver-manyusers
#git clone https://github.com/xiaoqingfengATGH/feeds-lienol
#mv feeds-lienol/lienol/luci-app-ipsec-vpnserver-manyusers/ package/
#chinadns-ng
#git clone https://github.com/liuyr88/luci-app-chinadns-ng.git
#mv luci-app-chinadns-ng/ package/
git clone https://github.com/liuyr88/feeds-xiaoqingfeng.git
mv feeds-xiaoqingfeng/luci-app-chinadns-ng/ package/
mv feeds-xiaoqingfeng/chinadns-ng/ package/
mv feeds/lienol/package/chinadns-ng/ tools/ng
#rm -rf /feeds/lienol/package/chinadns-ng 
#过滤
git clone https://github.com/destan19/OpenAppFilter.git
mv OpenAppFilter/ package/
#iptv
#git clone https://github.com/riverscn/openwrt-iptvhelper.git
#mv openwrt-iptvhelper/ package/
#vssr-plus
##git clone https://github.com/liuwenwv/luci-app-vssr-plus.git package/luci-app-vssr-plus
#git clone https://github.com/Leo-Jo-My/diy.git package/my

