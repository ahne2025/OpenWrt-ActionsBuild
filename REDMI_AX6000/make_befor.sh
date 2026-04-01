#!/bin/bash
#
# Copyright (c) 2019-2023 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

##配置IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/luci/bin/config_generate
##任务设置调到系统菜单
# sed -i '2,8d' package/feeds/jell/luci-app-taskplan/root/usr/share/luci/menu.d/luci-app-taskplan.json
sed -i '2,8d' package/feeds/taskplan/luci-app-taskplan/root/usr/share/luci/menu.d/luci-app-taskplan.json
# sed -i '/firstchild/d' package/feeds/jell/luci-app-taskplan/luasrc/controller/*.lua
# sed -i 's/"control"/"system"/g' package/feeds/jell/luci-app-taskplan/root/usr/share/luci/menu.d/luci-app-taskplan.json
sed -i 's/"control"/"system"/g' package/feeds/taskplan/luci-app-taskplan/root/usr/share/luci/menu.d/luci-app-taskplan.json
