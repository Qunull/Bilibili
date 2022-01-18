<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>up主页</title>
    <link rel="stylesheet" type="text/css" href="../css/up.css"/>
    <style>

    </style>
</head>
<body bgcolor="#F4F5F7">
<%--顶部导航栏--%>
<div id="nav">
    <jsp:include page="header.jsp" />
</div>
<!-- 头部信息 -->
<div class="head">
    <div class="wrap">
        <div class="bg">
            <!-- 这里是头像部分 -->
            <div class="h-info">
                <img src="${user.headPic}" alt="" class="tou">
                <div class="basic">
                    <p>
                        <span class="span1">${user.userName}</span>
                        <span class="span2">
                            <c:if test="${user.userRole == 1}">普通用户</c:if>
                            <c:if test="${user.userRole == 2}">大会员</c:if>
                        </span>
                    </p>
                    <p class="signature">${user.signature}</p>
                </div>
                <div class="button">
                    <div class="concern">关注</div>
                    <div class="message">发消息</div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 菜单栏 -->
<div class="wrap">
    <div class="navs">
        <!--左侧-->
        <ul class="ul2" id="navs">
            <li class="active"><a href=""><img src="../img/a1.JPG" alt="">主页</a></li>
            <li><a href="#"><img src="../img/a2.JPG" alt="">动态</a></li>
            <li><a href="#"><img src="../img/a3.JPG" alt="">投稿 ${user.contribution}</a></li>
            <li><a href="#"><img src="../img/a4.JPG" alt="">合集和列表 0</a></li>
        </ul>
        <!--右侧-->
        <ul class="ul3">
            <li>
                <a href="">
                    <p>关注数</p>
                    <p>${user.concern}</p>
                </a>
            </li>
            <li>
                <a href="">
                    <p>粉丝数</p>
                    <p>${user.fans}</p>
                </a>
            </li>
            <li>
                <a href="">
                    <p>获赞数</p>
                    <p>15</p>
                </a>
            </li>
            <li>
                <a href="">
                    <p>播放数</p>
                    <p>15</p>
                </a>
            </li>
            <li>
                <a href="">
                    <p>阅读数</p>
                    <p>15</p>
                </a>
            </li>
        </ul>
    </div>
    <!--主体内容-->
    <div class="main">
        <!--左侧-->
        <div class="leftbox">
            <h3 class="t2">代表作</h3>
            <div>
                <div class="content">
                    <a href="#" class="info">
                        <img src="../img/v2_1.webp" alt="">
                        <p class="txt1">建造大师如何一天肝出这种建筑！</p>
                    </a>
                    <p class="txt2">
                        <span class="play"><span></span>9.1万</span>
                        <span class="dm"><span></span>8.8万</span>
                    </p>
                </div>
                <div class="content">
                    <a href="#" class="info">
                        <img src="../img/v2_2.webp" alt="">
                        <p class="txt1">当“我”尝试挖空服务器，服主直接急了。</p>
                    </a>
                    <p class="txt2">
                        <span class="play"><span></span>56.4万</span>
                        <span class="dm"><span></span>50万</span>
                    </p>
                </div>
                <div class="content">
                    <a href="#" class="info">
                        <img src="../img/v2_3.webp" alt="">
                        <p class="txt1">花1500做的MC，到底能有多少BUG？</p>
                    </a>
                    <p class="txt2">
                        <span class="play"><span></span>98.6万</span>
                        <span class="dm"><span></span>89.4万</span>
                    </p>
                </div>
            </div>
            <h3 class="t2">
                <a href="#">TA的视频</a>
            </h3>
            <hr>
            <h3 class="t2">
                <a href="#">TA的专栏</a>
            </h3>
            <hr>
        </div>
        <!--右侧-->
        <div class="rightbox">
            <div class="author">
                <a href="authentication.jsp" target="_blank">
                    <div class="text6">
                        <span></span>
                        <p class="p1">bilibili个人认证：bilibili 知名UP主</p>
                    </div>
                </a>
            </div>
            <div class="zhongxin">
                <img src="../img/12.JPG" alt="">
                <div class="box1">
                    <a href="">
                        <img src="../img/a9.JPG" width="18" height="18" alt="">视频投稿
                    </a>
                    <a href="">
                        <img src="../img/a10.JPG" width="18" height="18" alt="">内容管理
                    </a>
                </div>
            </div>
            <div class="gonggao">
                <h3>公告</h3>
                <p class="notice">${user.notice}</p>
            </div>
            <div class="ziliao">
                <h3 >个人资料</h3>
                <p>
                    <span>UID <span>${user.userId}</span></span>
                    <span>生日 <span>${user.birthday}</span></span>
                </p>
            </div>
        </div>
    </div>
</div>
</body>
<script src="../js/jquery-3.6.0.js"></script>
<script>
    window.onload = function() {
        var ul = document.getElementById('navs');
        var li = ul.getElementsByTagName('li');
        for(var i = 0; i < li.length; i++) {
            li[i].onclick = function() {
                for(var k = 0; k < li.length; k++) {
                    li[k].className = '';
                }
                this.className = 'active';
            }
        }
    }
</script>
</html>
