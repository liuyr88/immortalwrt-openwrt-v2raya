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
#git clone https://github.com/kenzok8/openwrt-packages 
#mv openwrt-packages/luci-app-ssr-plus/ tools/ssr
#mv openwrt-packages/luci-app-smartdns/ tools/luci-app-smartdns
#mv openwrt-packages/smartdns/ tools/smartdns
#mv openwrt-packages/ package/kenzok8-package/
#git clone https://github.com/kenzok8/small 
#mv small/ package/small/
#mv package/small/chinadns-ng/ tools/ng2
#smartdns
#git clone https://github.com/pymumu/openwrt-smartdns.git 
#mv openwrt-smartdns/ package/smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git 
#mv luci-app-smartdns/ package/
#docker
#git clone https://github.com/xiaoqingfengATGH/feeds-xiaoqingfeng.git xiaoqingfeng/
#mv xiaoqingfeng/docker-ce/ package/
#mv xiaoqingfeng/luci-app-dockerman/ package/
#端口转发
#mv xiaoqingfeng/homeredirect/ package/
#mv xiaoqingfeng/luci-app-homeredirect package/
#vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git 
git clone https://github.com/jerrykuku/luci-app-vssr.git 
mv luci-app-vssr/ package/
mv lua-maxminddb/ package/
#jd
#git clone https://github.com/jerrykuku/node-request.git
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git  
#mv node-request/ package/
#mv luci-app-jd-dailybonus/ package/
#luci-app-ipsec-vpnserver
#luci-app-pptp-vpnserver
#rm -rf feeds/lienol/lienol/luci-app-ipsec-vpnserver-manyusers
#git clone https://github.com/xiaoqingfengATGH/feeds-lienol
#mv feeds-lienol/lienol/luci-app-ipsec-vpnserver-manyusers/ package/
#####git clone https://github.com/Lienol/openwrt-package
#####mv openwrt-package/luci-app-ipsec-server/ package/
#####mv openwrt-package/luci-app-pptp-server/ package/
#chinadns-ng
#git clone https://github.com/liuyr88/luci-app-chinadns-ng.git
#mv luci-app-chinadns-ng/ package/
#git clone https://github.com/liuyr88/feeds-xiaoqingfeng.git
#mv feeds-xiaoqingfeng/luci-app-chinadns-ng/ package/
#mv feeds-xiaoqingfeng/chinadns-ng/ package/
#mv feeds/lienol/package/chinadns-ng/ tools/ng
##rm -rf /feeds/lienol/package/chinadns-ng 
#过滤
#git clone https://github.com/destan19/OpenAppFilter.git
#mv OpenAppFilter/ package/
#iptv
#git clone https://github.com/riverscn/openwrt-iptvhelper.git
#mv openwrt-iptvhelper/ package/
#vssr-plus
##git clone https://github.com/liuwenwv/luci-app-vssr-plus.git package/luci-app-vssr-plus
#git clone https://github.com/Leo-Jo-My/diy.git package/my
#
#
#
#
#docker
git clone https://github.com/xiaoqingfengATGH/feeds-xiaoqingfeng.git xiaoqingfeng/
#mv xiaoqingfeng/docker-ce/ package/
#mv xiaoqingfeng/luci-app-dockerman/ package/
#端口转发
#mv xiaoqingfeng/homeredirect/ package/
#mv xiaoqingfeng/luci-app-homeredirect package/

#luci-theme-infinityfreedom
#git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git package/

#chinadns-ng
#git clone https://github.com/liuyr88/luci-app-chinadns-ng.git
#mv luci-app-chinadns-ng/ package/
#git clone https://github.com/liuyr88/feeds-xiaoqingfeng.git
#mv feeds-xiaoqingfeng/luci-app-chinadns-ng/ package/
#mv feeds-xiaoqingfeng/chinadns-ng/ package/
#mv feeds/lienol/package/chinadns-ng/ tools/ng

#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Add luci-app-ssr-plus
pushd package/lean
git clone --depth=1 https://github.com/fw876/helloworld

# Add Project OpenWrt's autocore
rm -rf autocore
svn co https://github.com/project-openwrt/openwrt/trunk/package/lean/autocore
popd

# Clone community packages to package/community
mkdir package/community
pushd package/community

# Add Lienol's Packages
git clone --depth=1 https://github.com/Lienol/openwrt-package
#mv package/community/openwrt-package/package/chinadns-ng/ tools/ng

# Add mentohust & luci-app-mentohust.
#git clone --depth=1 https://github.com/BoringCat/luci-app-mentohust
#git clone --depth=1 https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk

# Add ServerChan
#git clone --depth=1 https://github.com/tty228/luci-app-serverchan

# Add OpenClash
git clone --depth=1 -b master https://github.com/vernesong/OpenClash

# Add luci-app-onliner (need luci-app-nlbwmon)
#git clone --depth=1 https://github.com/rufengsuixing/luci-app-onliner

# Add luci-app-adguardhome
svn co https://github.com/Lienol/openwrt/trunk/package/diy/luci-app-adguardhome
svn co https://github.com/Lienol/openwrt/trunk/package/diy/adguardhome

# Add luci-app-diskman
#git clone --depth=1 https://github.com/lisaac/luci-app-diskman
#mkdir parted
#cp luci-app-diskman/Parted.Makefile parted/Makefile

# Add luci-app-dockerman
#rm -rf ../lean/luci-app-docker
#git clone --depth=1 https://github.com/KFERMercer/luci-app-dockerman
#git clone --depth=1 https://github.com/lisaac/luci-lib-docker

# Add luci-app-gowebdav
#git clone --depth=1 https://github.com/project-openwrt/openwrt-gowebdav

# Add luci-app-jd-dailybonus
#git clone --depth=1 https://github.com/jerrykuku/node-request
#git clone --depth=1 https://github.com/jerrykuku/luci-app-jd-dailybonus

# Add luci-theme-argon
#git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon
#git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config
#rm -rf ../lean/luci-theme-argon

# Add tmate
#git clone --depth=1 https://github.com/project-openwrt/openwrt-tmate

# Add subconverter
#git clone --depth=1 https://github.com/tindy2013/openwrt-subconverter

# Add gotop
#svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/gotop

# Add smartdns
svn co https://github.com/pymumu/smartdns/trunk/package/openwrt ../smartdns
svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/luci-app-smartdns ../luci-app-smartdns

# Add udptools
#git clone --depth=1 https://github.com/bao3/openwrt-udp2raw
#git clone --depth=1 https://github.com/bao3/openwrt-udpspeeder
#git clone --depth=1 https://github.com/bao3/luci-udptools

# Add OpenAppFilter
#git clone --depth=1 https://github.com/destan19/OpenAppFilter
popd

#chinadns-ng
#git clone https://github.com/liuyr88/luci-app-chinadns-ng.git
#mv luci-app-chinadns-ng/ package/
mv package/community/openwrt-package/package/chinadns-ng/ tools/ng
mv feeds/pw/chinadns-ng/ tools/ng1
git clone https://github.com/liuyr88/feeds-xiaoqingfeng.git
mv feeds-xiaoqingfeng/luci-app-chinadns-ng/ package/community/openwrt-package/package/
mv feeds-xiaoqingfeng/chinadns-ng/ package/community/openwrt-package/package/

# Mod zzz-default-settings
#pushd package/lean/default-settings/files
#sed -i "/commit luci/i\uci set luci.main.mediaurlbase='/luci-static/argon'" zzz-default-settings
#sed -i '/http/d' zzz-default-settings
#sed -i '/exit/i\chmod +x /bin/ipv6-helper' zzz-default-settings
popd

# Fix libssh
#pushd feeds/packages/libs
#rm -rf libssh
#svn co https://github.com/openwrt/packages/trunk/libs/libssh
#popd

## Fix mt76 wireless driver
# pushd package/kernel/mt76
# rm -f Makefile
# wget https://raw.githubusercontent.com/openwrt/openwrt/e12ac405525c29a6b6195e6259d769715919560c/package/kernel/mt76/Makefile
# sed -i '/mt7662u_rom_patch.bin/a\\techo mt76-usb disable_usb_sg=1 > $\(1\)\/etc\/modules.d\/mt76-usb' Makefile
# popd

# Add po2lmo
#git clone https://github.com/openwrt-dev/po2lmo.git
#pushd po2lmo
#make && sudo make install
#popd
