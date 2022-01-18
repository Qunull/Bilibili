<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="../css/header.css">
<div id="nav_top" class="clear">
    <!--左侧导航栏-->
    <div class="banner_left clear">
        <ul class="banner_left_ul">
            <li class="hidden">
                <a href="${pageContext.request.contextPath}/user?opr=home&phone=${user.phone}&password=${user.password}">主站 ﹀</a>
                <div class="hidden_list">
                    <ul class="clear">
                        <li><a href="homePage.jsp#ad" target="_blank">推广</a></li>
                        <li><a href="homePage.jsp#match" target="_blank">赛事</a></li>
                        <li><a href="homePage.jsp#animation" target="_blank">番剧</a></li>
                    </ul>
                </div>
            </li>
            <li class="banner_left_item"><a href="#">番剧</a></li>
            <li class="banner_left_item"><a href="#">游戏中心</a></li>
            <li class="banner_left_item"><a href="#">直播</a></li>
            <li class="banner_left_item"><a href="#">会员购</a></li>
            <li class="banner_left_item"><a href="#">漫画</a></li>
            <li class="banner_left_item"><a href="#">赛事</a></li>
            <li class="banner_left_item"><a href="#">纪录片</a></li>
            <li class="banner_left_item"><a href="#">S11</a></li>
            <li class="banner_left_item"><a href="#">下载APP</a></li>
        </ul>
    </div>
    <!--搜索框-->
    <div class="banner_search">
        <form class="banner_search_form">
            <input type="text" placeholder="想找点什么呢？">
            <div class="banner_search_btn">找</div>
        </form>
    </div>
    <!--右侧导航栏-->
    <div class="banner_right clear">
        <ul class="banner_right_ul">
            <li class="banner_right_item">
                <a href="${pageContext.request.contextPath}/pages/person.jsp" target="_blank">
                    <img id="header" src="../headPic/base.gif" alt="">
                </a>
            </li>
            <li class="banner_right_item"><a href="#">大会员</a></li>
            <li class="banner_right_item"><a href="#">消息</a></li>
            <li class="banner_right_item"><a href="#">动态</a></li>
            <li class="banner_right_item"><a href="#">收藏</a></li>
            <li class="banner_right_item"><a href="#">历史</a></li>
            <li class="banner_right_item"><a href="${pageContext.request.contextPath}/pages/center.jsp" target="_blank">创作中心</a></li>
            <li class="banner_right_item"><a href="#"><span id="tougao">投稿</span></a></li>
        </ul>
    </div>
</div>
<script src="../js/jquery-3.6.0.js"></script>
<script>
    /*主站 更多列表*/
    $(".hidden").hover(function () {
        $(".hidden_list").slideDown("fast");
    },function () {
        $(".hidden_list").slideUp("fast");
    });
</script>

