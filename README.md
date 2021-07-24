# chromedriver

批量下载chromedriver

使用淘宝源：https://npm.taobao.org/mirrors/chromedriver

## 用处

Appium的[Desired Capabilities](https://appium.io/docs/en/writing-running-appium/caps/)中，仅对于基于Android的驱动，有配置选项 `chromedriverExecutableDir`。设置它后可以自动发现兼容的chromedriver。

```
caps["chromedriverExecutableDir"]="/Users/zhengbangbo/tools/chromedriver/drivers-enabled"
```
