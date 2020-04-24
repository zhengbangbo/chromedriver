#!/usr/bin/env bash
# 批量下载 chromedriver

# 下载地址示例：
# 1) https://npm.taobao.org/mirrors/chromedriver/83.0.4103.14/chromedriver_mac64.zip
# 2) https://npm.taobao.org/mirrors/chromedriver/2.9/chromedriver_mac32.zip
# 地址主要分两种，分别是32位和36位

for line in `cat ./version`
do
  if [ ${line:0:1} -eq 2 ]
  then
    wget -P $line https://npm.taobao.org/mirrors/chromedriver/$line/chromedriver_mac32.zip
    unzip -n ./$line/chromedriver_mac32.zip -d ./$line
  else
    wget -P $line https://npm.taobao.org/mirrors/chromedriver/$line/chromedriver_mac64.zip
    unzip -n ./$line/chromedriver_mac64.zip -d ./$line
  fi
done

# 最后删除所有zip文件
find . -type f | grep ".zip$" | xargs rm -f
