# Hexo-Next-Plugins-Calendar

一个简洁的hexo-next日历云插件, 在日历上显示提交标记

![](example.png)

### 安装

1. 首先安装hexo插件

```shell
npm install --save git://github.com/icecory/Hexo-Next-Plugins-Calendar#hexo
```

2. 然后安装next部分

在顶层`source`目录下(注意不是`theme`目录下)创建`lib`目录与`_data`目录

- 把`calendar.min.js`, `languages.min.js`放到`lib`目录下
- 把`calendar.swig`放到`_data`目录下
- 把`sidebar.swig`放到`_data`目录下
- 把`calendar.styl`放到_data目录下重命名为`styles.styl`

3. 修改`theme/next/layout/_layout.swig`
在最后的`include`后面添加
```
{% include '../../../source/_data/calendar.swig' %}
```

4. 在文件_config.yml 

修改:
```ymal
custom_file_path:
  sidebar: source/_data/sidebar.swig
  styles: source/_data/styles.styl
```

加入: 
```yaml
# 日历云
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

