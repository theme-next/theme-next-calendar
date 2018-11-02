# Hexo-Next-Plugins-Calendar

一个简洁的hexo-next日历云插件, 在日历上显示提交标记

![](example.png)

### 安装

1. 首先安装hexo插件

```shell
npm install --save git://github.com/icecory/Hexo-Next-Plugins-Calendar#hexo
```

2. 然后安装next部分

在顶层`source`目录下(注意不是`theme`中的)创建_data目录

- 把calendar.min.js, languages.min.js放到theme/next/source/lib目录下
- 把calendar.swig, sidebar.swig, calendar.styl放到_data目录下

3. 修改`theme/next/layout/_layout.swig`, 在最后添加一行`{% include '../../../source/_data/calendar.swig' %}`

4. 在next主题配置文件`_config.yml`配置
```ymal
custom_file_path:
  sidebar: source/_data/sidebar.swig
  styles: source/_data/calendar.styl

CloudCalendar:
  enable: true
  language: zh-CN
  single: true
  root: /calendar/
```

### 渲染日历

默认是在边栏中渲染, 当然也可以在任何位置显示, 只要移动`sidebar.swig`中的代码即可

### 自定义日历颜色

日历插件内各元素的颜色都是可定制的, 可以通过修改`calendar.styl`文件来达到更好的效果.

### 感谢

该日历插件的提取自`Landscape-F`主题, 修改后适配next主题.

