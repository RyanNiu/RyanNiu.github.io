---
title: Markdown语法
tags: 
- Markdown
- Better me
categories: []
date: 2016-11-18 14:12:13
---

 ### 基本说明
 HTML 是一种发布的格式，Markdown 是一种书写的格式。就这样，Markdown 的格式语法只涵盖纯文本可以涵盖的范围。
<!-- more -->
不在 Markdown 涵盖范围之内的标签，都可以直接在文档里面用 HTML 撰写。不需要额外标注这是 HTML 或是 Markdown；只要直接加标签就可以了。(如本文中的 常用语法表格 就是使用HTML标签实现的)

    标题：可以在标题内容前输入特定数量的‘#’来实现对应级别的HTML样式的标题（HTML提供六级标题），# 一级标题；#### 四级标题。
    
    代码：要在Markdown中插入代码，你有两种选择。 一种是把代码用反引号‘`’包起。
    
    无序列表：使用星号‘*’、加号‘+’或是减号‘-’作为列表标记。
    有序列表：使用数字接着一个英文句点。

    换行：如果想强迫换行，可以在行尾插入至少两个空格。
    
    分隔线：你可以在一行中用三个以上的星号、减号、底线来建立一个分隔线，行内不能有其他东西。
    
    原样输出：如果需要打出‘#’，‘*’，‘>’等在 Markdown中有特殊含义的字符，需要使用‘/’，进行转译。
<!-- 支持以下这些符号前面加上反斜杠来帮助插入普通的符号：
    \   反斜线
    `   反引号
    *   星号
    _   底线
    {}  花括号
    []  方括号
    ()  括弧
    #   井字号
    +   加号
    -   减号
    .   英文句点
    !   惊叹号 -->
    
 ### 常用语法
<table><thead><tr><th>输出后的效果</th><th>Markdown</th></tr></thead><tbody><tr><td>**粗体**</td><td>\*\*text\*\*</td></tr><tr><td>_斜体_</td><td>\*text\*或\_text\_</td></tr><tr><td>~~删除~~</td><td>\~\~text\~\~</td></tr><tr><td>[链接](index.html#)</td><td>\[title](http://)</td></tr><tr><td>`行内代码`</td><td>\`code\`</td></tr><tr><td>图片</td><td>\!\[alt](http://)</td></tr><tr><td>列表</td><td>*item</td></tr><tr><td>引用</td><td>> quote</td></tr><tr><td>标题</td><td># Heading</td></tr><tr><td><邮箱@abc.com></td><td>`<邮箱@abc.com>`</td></tr></tbody></table>