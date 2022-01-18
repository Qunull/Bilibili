<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>当前在线 - 哔哩哔哩 (゜-゜)つロ 干杯~-bilibili</title>
    <link rel="stylesheet" href="../css/watchList.css">
</head>
<body>
<div id="banner">
    <!--导航栏顶部-->
    <div id="nav">
        <div id="nav_top" class="clear">
            <!--左侧导航栏-->
            <div class="banner_left clear">
                <ul class="banner_left_ul">
                    <li class="banner_left_item"><a href="homePage.jsp"><span></span>主站</a></li>
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
                    <li class="banner_right_item"><a href="person.jsp" target="_blank"><img src="../headPic/header.webp" alt=""></a></li>
                    <li class="banner_right_item"><a href="#">大会员</a></li>
                    <li class="banner_right_item"><a href="#">消息</a></li>
                    <li class="banner_right_item"><a href="#">动态</a></li>
                    <li class="banner_right_item"><a href="#">收藏</a></li>
                    <li class="banner_right_item"><a href="#">历史</a></li>
                    <li class="banner_right_item"><a href="center.jsp" target="_blank">创作中心</a></li>
                    <li class="banner_right_item"><a href="#"><span id="tougao">投稿</span></a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 导航栏底部 -->
    <div id="nav_bottom" class="clear">
        <div class="nav_bottom_left">
            <ul class="nav_bottom_left_ul">
                <li><a href="#"><span>首页</span></a></li>
                <li><a href="#"><span>动态</span></a></li>
                <li><a href="#"><span>热门</span></a></li>
                <li><a href="#"><span>频道</span></a></li>
            </ul>
        </div>
        <div class="nav_bottom_middle">
            <ul class="nav_bottom_middle_ul">
                <li><a href="#">动画<span>999+</span></a></li>
                <li><a href="#">音乐<span>999+</span></a></li>
                <li><a href="#">舞蹈<span>999+</span></a></li>
                <li><a href="#">知识<span>999+</span></a></li>
                <li><a href="#">生活<span>999+</span></a></li>
                <li><a href="#">时尚<span>999+</span></a></li>
                <li><a href="#">娱乐<span>999+</span></a></li>
                <li><a href="#">放映厅<span>999+</span></a></li>
                <li><a href="#">番剧<span>999+</span></a></li>
                <li><a href="#">国创<span>999+</span></a></li>
                <li><a href="#">游戏<span>999+</span></a></li>
                <li><a href="#">科技<span>999+</span></a></li>
                <li><a href="#">鬼畜<span>999+</span></a></li>
                <li><a href="#">资讯<span>999+</span></a></li>
                <li><a href="#">影视<span>999+</span></a></li>
                <li class="hidden">
                    <a href="#">更多 ▽</a>
                    <div class="hidden_list">
                        <div class="hidden_list_left">
                            <ul>
                                <li><a href="#">虚拟UP主</a></li>
                                <li><a href="#">搞笑</a></li>
                                <li><a href="#">美食</a></li>
                                <li><a href="#">动物园</a></li>
                            </ul>
                        </div>
                        <div class="hidden_list_right">
                            <ul>
                                <li><a href="#">单机游戏</a></li>
                                <li><a href="#">运动</a></li>
                                <li><a href="#">汽车</a></li>
                                <li><a href="#">VLOG</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="nav_bottom_right">
            <ul class="nav_bottom_right_ul">
                <li><a href="#"><span class="span1"></span>专栏</a></li>
                <li><a href="#"><span class="span2"></span>活动</a></li>
                <li><a href="#"><span class="span3"></span>小黑屋</a></li>
                <li><a href="#"><span class="span1"></span>直播</a></li>
                <li><a href="#"><span class="span2"></span>课堂</a></li>
                <li><a href="#"><span class="span3"></span>新歌热榜</a></li>
            </ul>
        </div>
    </div>
</div>
<div id="menu">
    <!--头部标题-->
    <div class="header">
        <div class="header_img"></div>
        <span>观看列表</span>
        <span>根据稿件网页端的观看情况，定时更新</span>
    </div>
    <!--中间内容列表-->
    <div class="content_list clear">
        <div class="content">
            <a href="#" class="info">
                <img src="../../images/list1.webp" alt="">
                <p class="txt1"> 连长最瞧不上的兵，却是最后坚守七连骄傲的人！《士兵突击》P6</p>
            </a>
            <p class="txt2">
                <span class="play"><span></span>72.3万</span>
                <span class="dm"><span></span>1.7万</span>
            </p>
            <a href="#" class="author">木鱼水心</a>
            <p class="watch"><b>5366</b>人在看</p>
            <div class="trigger"></div>
        </div>
        <div class="content">
            <a href="#" class="info">
                <img src="../../images/list2.webp" alt="">
                <p class="txt1">中美元首会晤 两艘巨轮共存于地球 中国给出新说法【逸语道破】</p>
            </a>
            <p class="txt2">
                <span class="play"><span></span>54.0万</span>
                <span class="dm"><span></span>6736</span>
            </p>
            <a href="#" class="author">观察者网</a>
            <p class="watch"><b>3014</b>人在看</p>
            <div class="trigger"></div>
        </div>
        <div class="content">
            <a href="#" class="info">
                <img src="../images/list3.webp" alt="">
                <p class="txt1">《高等数学》同济版 全程教学视频（宋浩老师）</p>
            </a>
            <p class="txt2">
                <span class="play"><span></span>3653.3万</span>
                <span class="dm"><span></span>98.7万</span>
            </p>
            <a href="#" class="author">宋浩老师官方</a>
            <p class="watch"><b>2566</b>人在看</p>
            <div class="trigger"></div>
        </div>
        <div class="content">
            <a href="#" class="info">
                <img src="../images/list4.webp" alt="">
                <p class="txt1">天津名吃：本以为只是个普通鸡蛋，戳开的瞬间我愣住了！</p>
            </a>
            <p class="txt2">
                <span class="play"><span></span>158.4万</span>
                <span class="dm"><span></span>1.3万</span>
            </p>
            <a href="#" class="author">盗月社食遇记</a>
            <p class="watch"><b>2032</b>人在看</p>
            <div class="trigger"></div>
        </div>
        <div class="content">
            <a href="#" class="info">
                <img src="../images/list5.webp" alt="">
                <p class="txt1">名侦探柯南(中配) 01-889</p>
            </a>
            <p class="txt2">
                <span class="play"><span></span>3.1亿</span>
                <span class="dm"><span></span>397.6万</span>
            </p>
            <a href="#" class="author">哔哩哔哩番剧</a>
            <p class="watch"><b>1676</b>人在看</p>
            <div class="trigger"></div>
        </div>
        <div class="content">
            <a href="#" class="info">
                <img src="../images/list6.webp" alt="">
                <p class="txt1">名侦探柯南 01-941</p>
            </a>
            <p class="txt2">
                <span class="play"><span></span>3.5亿</span>
                <span class="dm"><span></span>654.6万</span>
            </p>
            <a href="#" class="author">哔哩哔哩番剧</a>
            <p class="watch"><b>1654</b>人在看</p>
            <div class="trigger"></div>
        </div>
        <div class="content">
            <a href="#" class="info">
                <img src="../images/list7.webp" alt="">
                <p class="txt1">黑马程序员匠心之作|C++教程从0到1入门编程,学习编程不再难</p>
            </a>
            <p class="txt2">
                <span class="play"><span></span>1075.5万</span>
                <span class="dm"><span></span>25.2万</span>
            </p>
            <a href="#" class="author">黑马程序员</a>
            <p class="watch"><b>1314</b>人在看</p>
            <div class="trigger"></div>
        </div>
        <div class="content">
            <a href="" class="info">
                <img src="../images/list8.webp" alt="">
                <p class="txt1">尚硅谷Java零基础入门教程（含百道Java真题，2万多行Java代码实战）</p>
            </a>
            <p class="txt2">
                <span class="play"><span></span>876.8万</span>
                <span class="dm"><span></span>43.8万</span>
            </p>
            <a href="" class="author">尚硅谷</a>
            <p class="watch"><b>1240</b>人在看</p>
            <div class="trigger"></div>
        </div>
        <div class="content">
            <a href="#" class="info">
                <img src="../images/list9.webp" alt="">
                <p class="txt1">【王老菊】这2021是一天待不下去了 | 艾尔登法环EP.00-2</p>
            </a>
            <p class="txt2">
                <span class="play"><span></span>76.5万</span>
                <span class="dm"><span></span>2.2万</span>
            </p>
            <a href="#" class="author">怕上火暴王老菊</a>
            <p class="watch"><b>1204</b>人在看</p>
            <div class="trigger"></div>
        </div>
        <div class="content">
            <a href="#" class="info">
                <img src="../images/list10.webp" alt="">
                <p class="txt1">【10月】国王排名 01【独家正版】</p>
            </a>
            <p class="txt2">
                <span class="play"><span></span>2498.6万</span>
                <span class="dm"><span></span>8.2万</span>
            </p>
            <a href="#" class="author">哔哩哔哩番剧</a>
            <p class="watch"><b>1166</b>人在看</p>
            <div class="trigger"></div>
        </div>
        <div class="content">
            <a href="#" class="info">
                <img src="../images/list11.webp" alt="">
                <p class="txt1">尚硅谷Vue2.0+Vue3.0全套教程丨vuejs从入门到精通</p>
            </a>
            <p class="txt2">
                <span class="play"><span></span>136.2万</span>
                <span class="dm"><span></span>6.3万</span>
            </p>
            <a href="#" class="author">尚硅谷</a>
            <p class="watch"><b>1161</b>人在看</p>
            <div class="trigger"></div>
        </div>
        <div class="content">
            <a href="#" class="info">
                <img src="../images/list12.webp" alt="">
                <p class="txt1">为了阵营而战 炉石设计师带你了解最新扩展包“奥特兰克的决裂”</p>
            </a>
            <p class="txt2">
                <span class="play"><span></span>1.5万</span>
                <span class="dm"><span></span>84</span>
            </p>
            <a href="#" class="author">网易暴雪游戏视频</a>
            <p class="watch"><b>1144</b>人在看</p>
            <div class="trigger"></div>
        </div>
        <div class="content">
            <a href="#" class="info">
                <img src="../images/list13.webp" alt="">
                <p class="txt1">【德云色】全球首播！拳头新游戏——破败王者：英雄联盟传奇！（2021.11.16）</p>
            </a>
            <p class="txt2">
                <span class="play"><span></span>3.2万</span>
                <span class="dm"><span></span>362</span>
            </p>
            <a href="#" class="author">老实憨厚的笑笑</a>
            <p class="watch"><b>1141</b>人在看</p>
            <div class="trigger"></div>
        </div>
        <div class="content">
            <a href="#" class="info">
                <img src="../images/list14.webp" alt="">
                <p class="txt1">【S11全球总决赛】决赛 11月6日 EDG vs DK</p>
            </a>
            <p class="txt2">
                <span class="play"><span></span>1556.3万</span>
                <span class="dm"><span></span>24.0万</span>
            </p>
            <a href="#" class="author">哔哩哔哩英雄联盟赛事</a>
            <p class="watch"><b>1122</b>人在看</p>
            <div class="trigger"></div>
        </div>
        <div class="content">
            <a href="#" class="info">
                <img src="../images/list15.webp" alt="">
                <p class="txt1">王老菊教你生死角斗（2）</p>
            </a>
            <p class="txt2">
                <span class="play"><span></span>31.4万</span>
                <span class="dm"><span></span>3940</span>
            </p>
            <a href="#" class="author">怕上火暴王老菊</a>
            <p class="watch"><b>1120</b>人在看</p>
            <div class="trigger"></div>
        </div>
        <div class="content">
            <a href="#" class="info">
                <img src="../images/list16.webp" alt="">
                <p class="txt1">小伙不远万里来到拉萨，竟然就只为了吃一顿火锅？</p>
            </a>
            <p class="txt2">
                <span class="play"><span></span>150.3万</span>
                <span class="dm"><span></span>1.5万</span>
            </p>
            <a href="#" class="author">拜托了小翔哥</a>
            <p class="watch"><b>1118</b>人在看</p>
            <div class="trigger"></div>
        </div>
        <div class="content">
            <a href="#" class="info">
                <img src="../images/list17.webp" alt="">
                <p class="txt1">【10月】国王排名 05【独家正版】</p>
            </a>
            <p class="txt2">
                <span class="play"><span></span>423.3万</span>
                <span class="dm"><span></span>5.8万</span>
            </p>
            <a href="#" class="author">哔哩哔哩番剧</a>
            <p class="watch"><b>1080</b>人在看</p>
            <div class="trigger"></div>
        </div>
        <div class="content">
            <a href="#" class="info">
                <img src="../images/list18.webp" alt="">
                <p class="txt1">称霸奥山战场！《炉石传说》最新扩展包“奥特兰克的决裂”12月8日上线！</p>
            </a>
            <p class="txt2">
                <span class="play"><span></span>1.9万</span>
                <span class="dm"><span></span>49</span>
            </p>
            <a href="#" class="author">网易暴雪游戏视频</a>
            <p class="watch"><b>1073</b>人在看</p>
            <div class="trigger"></div>
        </div>
        <div class="content">
            <a href="#" class="info">
                <img src="../images/list19.webp" alt="">
                <p class="txt1">《线性代数》高清教学视频 “惊叹号”系列 宋浩老师</p>
            </a>
            <p class="txt2">
                <span class="play"><span></span>2218.1万</span>
                <span class="dm"><span></span>79.2万</span>
            </p>
            <a href="#" class="author">宋浩老师官方</a>
            <p class="watch"><b>1042</b>人在看</p>
            <div class="trigger"></div>
        </div>
        <div class="content">
            <a href="#" class="info">
                <img src="../images/list20.webp" alt="">
                <p class="txt1">【王老菊】跌 落 神 坛 | 艾尔登法环EP.00-1</p>
            </a>
            <p class="txt2">
                <span class="play"><span></span>122.9万</span>
                <span class="dm"><span></span>4.2万</span>
            </p>
            <a href="#" class="author">怕上火暴王老菊</a>
            <p class="watch"><b>1013</b>人在看</p>
            <div class="trigger"></div>
        </div>
        <!--            div.content>(a[href='#']>(div.img>img[src='./../images/'])+p)+(div>span.play+span.dm+a[href='#'])+(p>b)-->
        <!--            div.content*20>(div.info>img[src='./../images/list$.webp']+p.txt1)+(p.txt2>(span.play>div)+(span.dm>div))+p.author+(p.watch>b)-->
    </div>
</div>
<!--底部-->
<div class="footer">
    <div class="footer_content clear">
        <div class="footer_left">
            <span>bilibili</span>
            <ul>
                <li><a href="#">关于我们</a></li>
                <li><a href="#">友情链接</a></li>
                <li><a href="#">联系我们</a></li>
                <li><a href="#">隐私政策</a></li>
                <li><a href="#">用户协议</a></li>
                <li><a href="#">bilibili认证</a></li>
                <li class="last"><a href="#">加入我们</a></li>
                <li class="last"><a href="#">Investor Relations</a></li>
            </ul>
        </div>
        <div class="footer_middle">
            <span>传送门</span>
            <ul>
                <li><a href="#">协议汇总</a></li>
                <li><a href="#">帮助中心</a></li>
                <li><a href="#">名人堂</a></li>
                <li><a href="#">活动中心</a></li>
                <li><a href="#">用户反馈论坛</a></li>
                <li><a href="#">MCN管理中心</a></li>
                <li><a href="#">活动专题页</a></li>
                <li><a href="#">壁纸站</a></li>
                <li><a href="#">高级弹幕</a></li>
                <li class="last"><a href="#">侵权申诉</a></li>
                <li class="last"><a href="#">广告合作</a></li>
                <li class="last"><a href="#">企业号官网</a></li>
            </ul>
        </div>
        <div class="footer_right">
            <div class="footer_right_content clear">
                <div>
                    <a href="#">
                        <div class="img img1"></div>
                        <p>下载APP</p>
                        <div class="bili_app"></div>
                    </a>
                </div>
                <div>
                    <a href="#">
                        <div class="img img2"><img src="../images/charity.png" alt=""></div>
                        <p>公益</p>
                    </a>
                </div>
                <div>
                    <a href="#">
                        <div class="img img3"></div>
                        <p>新浪微博</p>
                        <div class="weibo"></div>
                    </a>
                </div>
                <div>
                    <a href="#">
                        <div class="img img4"></div>
                        <p>官方微信</p>
                        <div class="weixin"></div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script src="../js/jquery-3.6.0.js"></script>
<script>
    $(function () {
        /*头像*/
        $(".banner_right_ul li:first").hover(function () {
            $(this).find("img").css({"transform":"scale(1.3)", "transition":"0.5s"});
        },function () {
            $(this).find("img").css({"transform":"none", "transition":"0.5s"});
        });

        /*更多列表*/
        $(".hidden").hover(function () {
            $(".hidden_list").slideDown("fast");
        },function () {
            $(".hidden_list").slideUp("fast");
        });

        /*列表内容*/
        $(".content").hover(function () {
            $(this).css({"transform":"scale(1.05)", "transition":"0.5s"});
            $(this).find(".trigger").show();
        },function () {
            $(this).css({"transform":"none", "transition":"0.5s"});
            $(this).find(".trigger").hide();
        });
    });
</script>
</html>
