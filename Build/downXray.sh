#!/bin/sh


#function downloadV2ray() {
    echo "正在查询最新版v2ray ..."
    rm -fr v2ray-core
    rm -fr Xray-macos-64.zip

    #tag='v1.4.3'
    #echo "v2ray-core version: ${tag}"

    #url="https://github.com/XTLS/Xray-core/releases/download/v1.4.3/Xray-macos-64.zip"
    #echo "正在下载最新版v2ray: ${tag}"
    

    url="https://github.com/XTLS/Xray-core/releases/latest/download/Xray-macos-64.zip"
    
    echo "正在下载最新版v2ray ..."
    curl -Lo Xray-macos-64.zip ${url}

    unzip -o Xray-macos-64.zip -d v2ray-core
    \cp v2ray-core/xray v2ray-core/v2ray
#}
