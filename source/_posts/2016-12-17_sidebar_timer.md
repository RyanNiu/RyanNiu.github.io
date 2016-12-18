---
title: 时光页面，以及侧边栏展示功能实现
tags:
  - Better me
categories: []
date: 2016-12-17 01:10:00
---

#### 创作背景
>相恋5年，猛然回望
>似乎未曾珍视有你的时光
>你陪伴的每一秒，都是我人生的宝藏
>该用时间记录过往
>该用生活铸造梦想

<!-- more -->

>经过了两个夜晚，实现了时光页面的初步创建和侧边栏展示，下面简单讲解一下实现方法

#### JS计时器的实现
>源码取自CODEPEN，[Sergei Varzin](http://codepen.io/varzin)的[源码](http://codepen.io/varzin/pen/rFfhH)

下面是我调整后的JS代码：

``` javascript
function updateTimer() {
	// yyyy-MM-dd HH:mm:ss
  past  = Date.parse("1991-03-30 00:00:00");
  now     = new Date();
  diff    = now - past;

  years  = Math.floor( diff / (1000*60*60*24*30*12) );
  months = Math.floor( diff / (1000*60*60*24*30) );
  days   = Math.floor( diff / (1000*60*60*24) );
  hours  = Math.floor( diff / (1000*60*60) );
  mins   = Math.floor( diff / (1000*60) );
  secs   = Math.floor( diff / 1000 );

  y = years;
  M = months - years  * 12;
  d = days   - months * 30;
  h = hours  - days   * 24;
  m = mins   - hours  * 60;
  s = secs   - mins   * 60;
  document.getElementById("timer")
    .innerHTML =
      '<div><span>since: 1991.03.30</span></div><br>'+
      '<div>' + y + '<span>years</span></div>' +
      '<div>' + M + '<span>months</span></div>' +
      '<div>' + d + '<span>days</span></div>' +
      '<div>' + h + '<span>hours</span></div>' +
      '<div>' + m + '<span>minutes</span></div>' +
      '<div>' + s + '<span>seconds</span></div>' ;
}
setInterval('updateTimer()', 1000 );
```
功能实现后，在配置文件中，增加Menu既可，注意I18N的应用

#### 侧边栏展示
- 新建.styl文件 next/source/css/_common/components/sidebar/sidebar-timer.styl

``` css
.sidebar_timer {
  text-align: center;
  font-family: "Helvetica Neue", "Open Sans", helvetica, arial, sans-serif;
  font-size: 3em;
  font-weight: 100;
  color: #FFF;
  text-shadow: 0 0 20px #48C8FF;
}
.sidebar_timer div {
  display: inline-block;
  min-width: 90px;
}
.sidebar_timer div span {
  color: #B1CDF1;
  display: block;
  font-size: .35em;
  font-weight: 400;
}

.sidebar_since { 
  text-shadow: 0 0 10px #48C8FF;
  color: #B1CDF1;
  display: block;
  font-size: .35em;
  font-weight: 400;
  padding-bottom: 10px;
}
```

- 添加styl引用 next/source/css/_common/components/sidebar/sidebar.styl

``` css
@import "sidebar-timer";
```

- 新建js文件 next/source/js/src／sidebar-timer.js

``` javascript
function updateSidebarTimer() {
    // yyyy-MM-dd HH:mm:ss
    past  = Date.parse("2011-11-11 00:00:00");
    now     = new Date();
    diff    = now - past;

    years  = Math.floor( diff / (1000*60*60*24*30*12) );
    months = Math.floor( diff / (1000*60*60*24*30) );
    days   = Math.floor( diff / (1000*60*60*24) );
    hours  = Math.floor( diff / (1000*60*60) );
    mins   = Math.floor( diff / (1000*60) );
    secs   = Math.floor( diff / 1000 );

    y = years;
    M = months - years  * 12;
    d = days   - months * 30;
    h = hours  - days   * 24;
    m = mins   - hours  * 60;
    s = secs   - mins   * 60;
    document.getElementsByClassName("sidebar_timer")[0]
      .innerHTML =
        '<div class = "sidebar_since"><span>since&nbsp;&nbsp;:&nbsp;&nbsp;2011 . 11 . 11</span></div><br>'+
        '<div>' + y + '<span>years</span></div>' +
        '<div>' + M + '<span>months</span></div>' +
        '<div>' + d + '<span>days</span></div>' +
        '<div>' + h + '<span>hours</span></div>' +
        '<div>' + m + '<span>minutes</span></div>' +
        '<div>' + s + '<span>seconds</span></div>' ;
}
setInterval('updateSidebarTimer()', 1000 );
```

- 添加js引用 next/layout/_scripts/commons.swig

``` js
  set js_commons = [
    'src/utils.js',
    'src/motion.js',
    'src/sidebar-timer.js'//添加计时器js的引用
  ]
```
- 添加HTML节点 next/layout/_macro/sidebar.swig

> 在`site-state`和`feed-link`中间添加代码

``` html
<div class = "sidebar_timer"></div>               
```
至此，完成了计时器功能的所有内容，留此备忘

