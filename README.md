# Hexo-Next-Plugins-Calendar

一个简洁的hexo-next日历云插件

![](example.png)

### 安装

安装分两步

首先安装hexo插件

```
npm install --save git://github.com/icecory/Hexo-Next-Plugins-Calendar#hexo
```

然后安装next部分

仓库一共四个文件,把文件放到指定位置

-   CloudCalendar.swig   -> themes/next/layout/_third-party/CloudCalendar.swig
-   CloudCalendar.styl     -> themes/next/source/css/_common/components/third-party/CloudCalendar.styl
-   CloudCalendar.min.js        -> themes/next/source/lib/CloudCalendar/CloudCalendar.min.js 
-   languages.min.js                 -> themes/next/source/lib/CloudCalendar/languages.min.js 

然后把这四个文件导入到主题中

1.  在`themes/next/source/css/_common/components/third-party/third-party.styl` 最后加入

    `@import "CloudCalendar" if hexo-config('CloudCalendar.enable');`

2.  在`themes/next/layout/_layout.swig`最后加入

    `{% include '_third-party/CloudCalendar.swig' %}`

3.  在文件_config.yml 加入

    ```yaml
    # 日历云
    CloudCalendar:
      enable: true
      language: zh-CN
      single: true
      root: /calendar/
    ```

### 渲染日历

在指定的位置呈现日历云

建议放在sidebar中的用户头像下面, 具体视主题而定

在文件`themes/next/layout/_macro/sidebar.swig` 适当位置后添加

```html
<!-- CloudCalendar -->
<div class="widget-wrap" style="width: 90%;margin-left: auto;margin-right: auto; opacity: 0.97;">
	<div class="widget" id="CloudCalendar"></div>
</div>
```

### 自定义日历颜色

日历插件内各元素的颜色都是可定制的, 可以通过修改CloudCalendar.styl文件来达到更好的效果.

### 感谢

该日历插件的提取自Landscape-F主题, 修改后适配next主题.

