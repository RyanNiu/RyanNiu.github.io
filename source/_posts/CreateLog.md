---
title: 建站后记
tags:
  - Better me
categories: []
date: 2016-11-18 17:08:24
---

#### 为什么建站
需要个地方存放和展示自己的各种东西：`文字` `创意` `原型` `PRD` `照片` `回忆`和`梦想`
<!-- more-->
#### 网站架构
##### 代码托管: [github](https://github.com/RyanNiu/RyanNiu.github.io) 
>借机学习了一下Markdown和git相关的东西

##### 公网展示: [github page](https://ryanniu.github.io/)
> 持续更新中，本文书写时处于癫狂的迷恋状态

##### 建站框架: [hexo](https://hexo.io/)
>在wordpress 和hexo 中，纠结了好久，最终由于hexo相对简单并且据说编译速度更快，继而投入了hexo的怀抱。

##### 网站主题: [next](http://theme-next.iissnan.com/)
>建站前期，搜索了很个人博客案例，被next一击即中，简洁大气很对我的胃口，也是使用hexo的原因之一。
<!--爱折腾的我，有时间一定会做next的个性化-->

##### 后台管理: [hexo-hey](https://github.com/nihgwu/hexo-hey) & [**hexo-local-admin**](https://github.com/geekwen/hexo-local-admin)
> 目前hexo没有什么特别好的 cms 和后台插件
我希望最终实现的是blog内容的 线上可视化编辑
所以 我想对这两个插件进行整合（能力范围内），并预想通过Travis CL 对其线上化

#### 网站相关
##### 域名服务
- [**freenom**](https://my.freenom.com/) <!-- ryan4work@163.com -->
- [**dnspod**](https://www.dnspod.cn)  <!-- ryan4work@163.com -->

##### 搜索服务
- [**algolia**](https://www.algolia.com/)  <!-- git 账号 -->

##### 评论服务
- [**多说**](http://duoshuo.com/) <!-- ryanniu -->
- [**disqus**](https://disqus.com/) <!-- ryanniu (没搞定) -->

##### 统计服务
- [**CNZZ**](http://www.umeng.com/) <!-- ryan4work@163.com -->

##### 企业邮箱
- [**网易企业邮箱**](http://ym.163.com/) <!-- ryanniu@2bno1.cf -->

##### 云服务器
- [**amazon aws**](https://aws.amazon.com/) <!-- ryan niu  727758239340  (审核中) -->
- [**阿里云**](https://www.aliyun.com/) <!-- ryan4work -->
- [**七牛**](https://www.qiniu.com/) <!-- ryan4work@163.com -->

#### 完成功能
- 添加统计 11/18

- 添加一键上传至云存储的图片展示功能 11/19
>感谢[weishu](http://weishu.me/)的[markdown-img-upload](https://github.com/tiann/markdown-img-upload)
计划后续添加上传PDF的类似功能
- 添加PDF展示 11/19
>感谢[SRK.Lyu](http://stackbox.cn/)的[hexo-pdf](https://github.com/superalsrk/hexo-pdf/)
>由于插件中调用的nagland.github.io/viewer/web/viewer.html 并不是官方实例，打算fork下来之后，有时间自己改一版
- Travis CL 线上部署 12/12
> 感谢[Travis CI](https://travis-ci.org/) 提供的开源服务
> 感谢[任苹蜻的博客](http://i.woblog.cn/2016/05/04/%E6%89%8B%E6%8A%8A%E6%89%8B%E6%95%99%E4%BD%A0%E4%BD%BF%E7%94%A8Travis%20CI%E8%87%AA%E5%8A%A8%E9%83%A8%E7%BD%B2%E4%BD%A0%E7%9A%84Hexo%E5%8D%9A%E5%AE%A2%E5%88%B0Github%E4%B8%8A/)
> 感谢[Adol1111](https://github.com/Adol1111) 对gitingnor的讲解

#### 后续计划
- ~~添加列表折叠优化~~，妄想写个hexo插件 11/22 功能实现 后续研究怎么开发插件
- 添加静态HTML原型导入
- 添加相册功能
- 外网域名设置
- 可视化管理/编辑功能整合
- 添加一个计时展示
- 多说样式更改
- 99无限PRD&原型录入
- 个人简历页面创建
- 创建封面导航页 工作和生活分离
- 添加访问统计 看看有多少人看过我的blog

