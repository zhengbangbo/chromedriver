# chromedriver

all 文件夹是用来指定`caps["chromedriverExecutableDir"]="/Users/zhengbangbo/tools/chromedriver/all"`。
让 appium 在处理时不要处理太多文件夹，复制一部分需要的就好。

version 文件里面的版本号是手动采集的。
在https://npm.taobao.org/mirrors/chromedriver 里面鼠标拖动复制粘贴，然后使用`cat version.txt | awk -F"/" '{print $1}' > version` 创建出来。


