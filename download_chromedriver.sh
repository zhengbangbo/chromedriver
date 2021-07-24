#!/usr/bin/env bash
# 批量下载 chromedriver

# 下载地址示例：
# 1) https://npm.taobao.org/mirrors/chromedriver/83.0.4103.14/chromedriver_mac64.zip
# 2) https://npm.taobao.org/mirrors/chromedriver/2.9/chromedriver_mac32.zip
# 地址主要分两种，分别是32位和36位

# 获得版本号
curl -s https://npm.taobao.org/mirrors/chromedriver | pup "pre a json{}" | jq '.[].href' | grep -E 'driver/\d{1,2}(\.\d{1,4}){3}' | awk -F/ '{print $4}' > versions

for version in `cat ./versions`
do
    # 下载
    #wget -P drivers-available/$version https://npm.taobao.org/mirrors/chromedriver/$version/chromedriver_mac64.zip
    mkdir -p drivers-available/$version
    curl -L https://npm.taobao.org/mirrors/chromedriver/$version/chromedriver_mac64.zip --output drivers-available/$version/chromedriver_mac64.zip
    echo '下载chromedriver '$version' 完成。'
    unzip -n ./drivers-available/$version/chromedriver_mac64.zip -d ./drivers-available/$version
done

# 最后删除所有zip文件
find . -type f -name "*.zip" | xargs rm -f

echo '大功告成！'
