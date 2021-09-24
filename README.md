
### 代理模式
    全局模式: 有别于vpn,只是将代理信息更新到系统代理http,https,socks,若需要真正全局模式, 推荐搭配使用Proxifier
    rules模式: 浏览器推荐搭配使用Proxy SwitchyOmega

### 相关文件
    v2ray-core文件: /Applications/V2rayU.app/Contents/Resources/v2ray-core
    v2ray-core启动: ~/Library/LaunchAgents/yanue.v2rayu.v2ray-core.plist
    v2ray-core日志: ~/Library/Logs/V2rayU.log
    当前启动服务配置: /Applications/V2rayU.app/Contents/Resources/config.json
    其他服务配置信息: ~/Library/Preferences/net.yanue.V2rayU.plist


    如果启动无反应可以尝试从命令行手动启动,查看原因
```
cd /Applications/V2rayU.app/Contents/Resources/
./v2ray-core/v2ray -config ./config.json
```
### 彻底卸载
(推荐使用AppCleaner)
```
cd ~/Library/LaunchAgents/
/bin/launchctl remove yanue.v2rayu.v2ray-core
/bin/launchctl remove yanue.v2rayu.http

rm -f ~/Library/LaunchAgents/yanue.v2rayu.v2ray-core.plist
rm -f ~/Library/Preferences/net.yanue.V2rayU.plist
rm -f ~/Library/Logs/V2rayU.log
```
### 相关问题
**1. 闪退**

> 大多因为读取配置文件问题,删除以下文件重新配置即可

```
 ~/Library/Preferences/net.yanue.V2rayU.plist
```
