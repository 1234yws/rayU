#!/bin/sh

function downloadReleaseXray() {
    echo "正在查询最新版Xray ..."
    rm -fr v2ray-core
    rm -fr Xray-macos-64.zip


    url="https://github.com/XTLS/Xray-core/releases/latest/download/Xray-macos-64.zip"
    
    echo "正在下载最新版Xray ..."
    curl -Lo Xray-macos-64.zip ${url}

    unzip -o Xray-macos-64.zip -d v2ray-core
    \cp v2ray-core/xray v2ray-core/v2ray
}



function downloadPreXray(){
	read -t 30 -p "请输入预发布版本号:" version
	echo -e "\n"
	rm -fr v2ray-core
    rm -fr Xray-macos-64.zip
	url="https://github.com/XTLS/Xray-core/releases/download/v{$version}/Xray-macos-64.zip"
	echo "正在下载预发布版Xray ..."
    curl -Lo Xray-macos-64.zip ${url}

    unzip -o Xray-macos-64.zip -d v2ray-core
    \cp v2ray-core/xray v2ray-core/v2ray

}

menu() {
  
  echo -e "\t Xray 更新管理脚本 "
  echo -e "\t---authored by 1234yws---"

  echo -e "—————————————— 安装向导 ——————————————"""
  echo -e "${Green}1.${Font}  Xray正式版本"
  echo -e "${Green}2.${Font}  Xray预发布版本"
  echo -e "${Green}40.${Font} 退出"

  read -rp "请输入数字：" menu_num
  case $menu_num in
  1)
    downloadReleaseXray
    ;;
  2)
    downloadPreXray
    ;;
  
  40)
    exit 0
    ;;
  *)
    print_error "请输入正确的数字"
    ;;
  esac
}
menu "$@"
