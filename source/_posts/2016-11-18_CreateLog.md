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
- 添加时光页面和侧边栏展示 12/17
- 添加动画背景 12/29
- 实现特殊markdown的解析,tag插件开发-《语录君栈》页面 02/01


#### 后续计划
- ~~添加列表折叠优化~~，妄想写个hexo插件 11/22 功能实现 后续研究怎么开发插件
- ~~添加访问统计 看看有多少人看过我的blog~~ next 主题已经集成CNZZ
- ~~添加一个计时展示~~ 12/15 ~~功能实现,后续添加到侧边栏中~~ 12/17 完成
- 车钥匙产品总架构总结内容添加
- 添加静态HTML原型导入
- 添加相册功能
- 外网域名设置
- 可视化管理/编辑功能整合
- 99无限PRD&原型录入
- 个人简历页面创建
- 创建封面导航页 工作和生活分离
- 多说样式更改


<!-- #### hexo换机备注 
##### hexo博客创建

- 创建仓库，(将”Initialize this repository with a README”选中，目的：克隆初始化的远程仓库到本地)（仓库名必须为:username.github.io）

- 创建两个分支：master 与 hexo，设置hexo为默认分支（因为我们只需要手动管理这个分支上的Hexo网站文件，master存放”hexo g”命令生成的静态网页）;

- 配置公钥，ssh-keygen -t rsa -C “your_email@youremail.com”

- 添加公钥，为远程github的username.github.io仓库添加.ssh文件夹下的id_rsa.pub文件的所有内容（验证公钥是否成功ssh -T git@github.com）

- 设置username和email，git config –global user.name “your name” 和 git config –global user.email “your_email@youremail.com”

- 克隆仓库到本地，任意位置通过Git bash执行git clone git@github.com:username/username.github.io.git拷贝仓库，在本地生成的仓库名为：username.github.io.git（进入本地仓库，使用git status 命令查看，当前分支应显示为hexo），如果想自定义本地仓库的名字，可以使用如下命令：git clone git@github.com:username/username.github.io.git hexo，本地仓库的名字就变为hexo(hexo可改成你想要的名字);

- 任意位置新建一个空文件夹（文件夹名任意，最好为英文，我这里命名为example），然后在该文件夹下通过Git bash依次执行npm install hexo-cli -g、hexo init、npm install 和 npm install hexo-deployer-git –save;

- 移动example文件夹里的所有内容到第6歩产生的username.github.io.git文件夹的根目录下

- 配置username.github.io.git文件夹根目录下的_config.yml文件，deploy部分修改为如下所示：
```deploy:
type: git
repository: git@github.com:username/username.github.io.git
branch: master```

- 依次执行git add .（注意不要少了”.”）、git commit -a -m “…”(…替换为提交信息)、git push origin hexo提交网站相关的文件;

- 执行hexo clean、hexo g 、hexo d生成网站并部署到GitHub上.

- 通过以上配置，就可以在多PC上管理自己的博客了

##### 博客的日常管理

>当重装电脑之后，或者想在其他电脑上修改博客，可以使用下列步骤：

- 安装必备软件，git、node.js

- 配置公钥，ssh-keygen -t rsa -C “your_email@youremail.com”

- 添加公钥，为远程github的username.github.io仓库添加.ssh文件夹下的id_rsa.pub文件的所有内容（验证公钥是否成功ssh -T git@github.com）

- 设置username和email，git config –global user.name “your name” 和 git config –global user.email “your_email@youremail.com”

- 克隆仓库到本地，任意位置通过Git bash执行git clone git@github.com:username/username.github.io.git命令拷贝仓库，在本地生成的仓库名为：username.github.io.git（进入本地仓库，使用git status 命令查看，当前分支应显示为hexo），如果想自定义本地仓库的名字，可以使用如下命令：git clone git@github.com:username/username.github.io.git hexo，本地仓库的名字就变为hexo（hexo可改成你想要的名字）;

- 进入第5歩所生成的文件夹，通过Git bash依次执行npm install hexo-cli -g、npm install 和 npm install hexo-deployer-git–save（注意：不能执行hexo init这条指令）

- 写文章，现在就可以通过hexo new title（title是你文章的标题）命令来写文章了;

- 依次执行git add .（注意不要少了”.”）、git commit -a -m “…”、git push origin hexo提交网站相关的文件;

- 执行hexo clean、hexo g 、hexo d生成网站并部署到GitHub上.

- 配置过程中经常使用的命令

- git status //列出当前目录所有还没有被git管理的文件和被git管理且被修改但还未提交 (git commit)的文件

- git remote //查看远程服务器名

- git branch //查看本地分支

- git branch -r //查看远程分支

- Git branch -a //查看所有分支（包括本地和远程）

- git add . //追踪所有文件

- git commit -a -m “…” //跳过使用暂存区域，自动把所有已经追踪过的文件暂存起来并提交

- git push //上传

- git clone //克隆远程仓库到本地

- git remote add origin git@github.com:username/username.github.io.git //与远程仓库链接

- git push -u origin master //-u 第一次提交让git记住本地仓库与远程仓库的连接,以后可 以不要 
-->

