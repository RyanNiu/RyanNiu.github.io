---
title: 动画背景功能实现
tags:
  - Better me
categories: []
date: 2016-12-29 21:00:00
---

#### 创作背景
>爱 如影相随

<!-- more -->

#### 实现方式
>源码取自CODEPEN，[Sergei Varzin](http://codepen.io/MarcoGuglielmelli/)的[Animated Background](http://codepen.io/MarcoGuglielmelli/pen/lLCxy)

链接是我调整后的JS代码：[codepen](http://codepen.io/RyanNiu/pen/ENGWqL)

#### NexT集成
- 引用问题，[greensock官网下载](https://greensock.com/),TweenLite.min.js `next/source/js/src/TweenLite.min.js`
- 新建.js文件 `next/source/js/src/animate-background.js`
- 新建.swig文件 `next/layout/_scripts/third-party/animate-background.swig`

``` Html
{%
set js_tweenlite = [
'src/TweenLite.min.js'
]
%}
{% for common in js_tweenlite %}
  <script type="text/javascript" src="{{ url_for(theme.js) }}/{{ common }}"></script>
{% endfor %}

{%
set js_animatebg = [
'src/animate-background.js'
]
%}
{% for common in js_animatebg %}
  <script type="text/javascript" src="{{ url_for(theme.js) }}/{{ common }}"></script>
{% endfor %}

```
- 修改_layout.swig

``` Html
      <!-- 在main内 添加canvas -->
      <canvas id="background-canvas"></canvas>
      
      <!-- 在文件结尾 添加animate-background.swig 的引用 -->
      {% include '_scripts/third-party/animate-background.swig' %}
```
至此，功能完成，留此备忘

