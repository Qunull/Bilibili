<%@ page import="entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>哔哩哔哩 (゜-゜)つロ 干杯~-bilibili</title>
    <link rel="stylesheet" href="../css/homePage.css">
    <style>

    </style>
</head>
<body>
<div id="banner">
    <!--导航栏顶部-->
    <div id="nav">
        <div id="nav_top" class="clear">
            <!--左侧导航栏-->
            <div class="banner_left clear">
                <ul class="banner_left_ul">
                    <li class="banner_left_item"><a href="#"><span></span>主站</a></li>
                    <li class="banner_left_item"><a href="#">番剧</a></li>
                    <li class="banner_left_item"><a href="#">游戏中心</a></li>
                    <li class="banner_left_item"><a href="#">直播</a></li>
                    <li class="banner_left_item"><a href="${pageContext.request.contextPath}/goods?opr=goodsList&phone=${user.phone}&password=${user.password}">会员购</a></li>
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
                    <li class="banner_right_item"><a href="${pageContext.request.contextPath}/user?opr=userInfo&phone=${user.phone}&password=${user.password}" target="_blank"><img src="${user.headPic}" alt=""></a></li>
                    <li class="banner_right_item"><a href="#">大会员</a></li>
                    <li class="banner_right_item"><a href="#">消息</a></li>
                    <li class="banner_right_item"><a href="#">动态</a></li>
                    <li class="banner_right_item"><a href="#">收藏</a></li>
                    <li class="banner_right_item"><a href="#">历史</a></li>
                    <li class="banner_right_item"><a href="${pageContext.request.contextPath}/pages/center.jsp" target="_blank">创作中心</a></li>
                    <li class="banner_right_item"><a href="/pages/login.jsp"><span id="tougao">登录</span></a></li>
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
                <!--更多列表-->
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
<!-- 主体内容 -->
<div id="menu" class="clear">
    <!--轮播图部分-->
    <div class="first_screen clear">
        <div class="screen_left">
            <a href="#">
                <img src="../images/lb1.jpg" alt="" style="display: none" class="lb">
            </a>
        </div>
        <!--轮播图右侧-->
        <div class="screen_right">
            <div class="content">
                <a href="#">
                    <img src="../images/lb_r1.webp" alt="">
                    <div class="info">
                        <p class="title">寒 冰 射 手</p>
                        <p class="up"><span>UP</span>一根黄瓜7</p>
                        <p class="play">39.5万播放</p>
                    </div>
                </a>
                <div class="video"><span>稍后再看</span></div>
            </div>
            <div class="content">
                <a href="#">
                    <img src="../images/lb_r2.webp" alt="">
                    <div class="info">
                        <p class="title">【波兰球】来自五常的压迫感</p>
                        <p class="up"><span>UP</span>高维肃正</p>
                        <p class="play">112.1万播放</p>
                    </div>
                </a>
                <div class="video"><span>稍后再看</span></div>
            </div>
            <div class="content">
                <a href="#">
                    <img src="../images/lb_r3.webp" alt="">
                    <div class="info">
                        <p class="title">【原神手书】荧妹也想变得可爱</p>
                        <p class="up"><span>UP</span>-yuro-</p>
                        <p class="play">16.5万播放</p>
                    </div>
                </a>
                <div class="video"><span>稍后再看</span></div>
            </div>
            <div class="content">
                <a href="#">
                    <img src="../images/lb_r4.webp" alt="">
                    <div class="info">
                        <p class="title">【觅渡】小丑总是那么人畜无害且善良</p>
                        <p class="up"><span>UP</span>觅渡的粉丝</p>
                        <p class="play">29.1万播放</p>
                    </div>
                </a>
                <div class="video"><span>稍后再看</span></div>
            </div>
            <div class="content">
                <a href="#">
                    <img src="../images/lb_r5.webp" alt="">
                    <div class="info">
                        <p class="title">𝐘𝐨𝐮 𝐚𝐫𝐞 𝐦𝐲 𝐇𝐄𝐑𝐎♦你就是我的英雄【柯哀MAD/碰杯回溯】</p>
                        <p class="up"><span>UP</span>少岛猫</p>
                        <p class="play">2.0万播放</p>
                    </div>
                </a>
                <div class="video"><span>稍后再看</span></div>
            </div>
            <div class="content">
                <a href="#">
                    <img src="../images/lb_r6.webp" alt="">
                    <div class="info">
                        <p class="title">【霉霉混剪】浪漫至死不渝</p>
                        <p class="up"><span>UP</span>Jerrite13</p>
                        <p class="play">2.7万播放</p>
                    </div>
                </a>
                <div class="video"><span>稍后再看</span></div>
            </div>
        </div>
    </div>
    <!--推广-->
    <div class="ad" id="ad">
        <div class="ad_left">
            <div class="header">
                <img src="../images/little.png" alt="">
                <h3>推广</h3>
            </div>
            <div class="ad_left_content clear">
                <div class="content">
                    <div><a href="#"><img src="../images/ad1.jpg" alt=""></a></div>
                    <a href=""><span>广告</span>双11《永劫无间》限时福利只需6折</a>
                    <a href="">永劫无间官方</a>
                </div>
                <div class="content">
                    <div><a href="#"><img src="../images/ad2.jpg" alt=""></a></div>
                    <a href="">“这是捅了什么仙女窝”</a>
                    <a href="${pageContext.request.contextPath}/up?opr=upUser&name=小秋日记本">小秋日记本</a>
                </div>
                <div class="content">
                    <div><a href="#"><img src="../images/ad3.jpg" alt=""></a></div>
                    <a href=""><span>广告</span>每天剪辑特效一小时，在家接单赚外快</a>
                    <a href="">中职通</a>
                </div>
                <div class="content">
                    <div><a href="#"><img src="../images/ad4.jpg" alt=""></a></div>
                    <a href="">惊变100天up主接力生存！【第一位】</a>
                    <a href="${pageContext.request.contextPath}/up?opr=upUser&name=史蒂猪StevenPig">史蒂猪StevenPig</a>
                </div>
            </div>
        </div>
        <div class="ad_right clear">
            <div class="header">
                <a href="${pageContext.request.contextPath}/pages/watchList.jsp" target="_blank">观看列表</a>
            </div>
            <div class="bottom">
                <a href="#">
                    <img src="../images/ad5.jpg" alt="">
                    <span>广告</span>
                </a>
            </div>
        </div>
    </div>
    <!--赛事-->
    <div class="match" id="match">
        <div class="match_left">
            <div class="header">
                <img src="../images/little.png" alt="">
                <h3>赛事</h3>
            </div>
            <div class="match_left_content clear">
                <div class="content">
                    <div>
                        <a href="#">
                            <img src="../images/match1.png" alt="">
                            <a href=""><span><img src="../images/living.gif" alt="">直播中</span>【正在直播】西安WE vs 成都AG超玩会</a>
                        </a>
                    </div>
                </div>
                <div class="content">
                    <div>
                        <a href="#">
                            <img src="../images/match2.png" alt="">
                            <a href=""><span><img src="../images/living.gif" alt="">直播中</span>【直播】英雄联盟手游破晓杯第二日！</a>
                        </a>
                    </div>
                </div>
                <div class="content">
                    <div><a href="#"><img src="../images/match3.png" alt=""><a href=""><span><img src="../images/living.gif" alt="">直播中</span>【直播】PEL S4赛季第四周Day4！</a></a></div></div>
                <div class="content">
                    <div><a href="#"><img src="../images/match4.png" alt=""><a href=""><span><img src="../images/living.gif" alt="">直播中</span>【直播】S联赛秋季赛全明星之夜</a></a></div></div>
            </div>
        </div>
        <div class="match_right">
            <a href="#"><img src="../images/match5.png" alt=""></a>
        </div>
    </div>
    <!--横幅广告-->
    <div class="ad_title">
        <a href="#"><img src="../images/ad_title.jpg" alt=""><span>广告</span></a>
    </div>
    <!--番剧-->
    <div class="animation" id="animation">
        <div class="animation_left">
            <div class="header">
                <img src="../images/little.png" alt="">
                <h3>番剧</h3>
            </div>
            <div class="time">
                <div>最新</div>
                <div>周一</div>
                <div>周二</div>
                <div>周三</div>
                <div>周四</div>
                <div>周五</div>
                <div>周六</div>
                <div>周日</div>
            </div>
            <!--番剧内容列表-->
            <!--最新-->
            <div class="animation_content">
                <div class="animation_content_new">
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/new_animation1.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">博人传 火影忍者新时代</a>
                            <a href="#">第215话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/new_animation2.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">关于前辈很烦人的事</a>
                            <a href="#">第6话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/new_animation3.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">无敌侠：舞动的英雄</a>
                            <a href="#">第7话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/new_animation4.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">创之界限</a>
                            <a href="#">第1话~第2话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/new_animation5.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">世界尽头的圣骑士</a>
                            <a href="#">第6话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/new_animation6.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">LoveLive 爱与演唱会</a>
                            <a href="#">第10话~第12话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/new_animation7.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">名侦探柯南</a>
                            <a href="#">第1083话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/new_animation8.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">半夜的夜叉姬 第二季</a>
                            <a href="#">第5话~第7话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/new_animation9.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">勇者斗恶龙 达伊的大冒险</a>
                            <a href="#">第44话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/new_animation10.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">烧窑的话也要马克杯 第二季</a>
                            <a href="#">第6话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/new_animation11.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">结城友奈是勇者 第三季 / 大满开之章</a>
                            <a href="#">第7话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/new_animation12.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">大正少女御伽话</a>
                            <a href="#">第6话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/new_animation13.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">男孩遇见女孩</a>
                            <a href="#">第3话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/new_animation14.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">妖怪手表</a>
                            <a href="#">第5话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/new_animation15.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">国王排名</a>
                            <a href="#">第5话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/new_animation16.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">白沙的水族馆</a>
                            <a href="#">第19话</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--周一-->
            <div class="animation_content">
                <div class="animation_content_one">
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/one_animation1.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">RE-MAIN：少年与水球</a>
                            <a href="#">第6话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/one_animation2.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">卡片战斗先导者overDress</a>
                            <a href="#">第19话</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--周二-->
            <div class="animation_content">
                <div class="animation_content_two">
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/two_animation1.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">进化之实 踏上胜利的人生</a>
                            <a href="#">第7话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/two_animation2.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">宿命回响：命运节拍</a>
                            <a href="#">第3话</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--周三-->
            <div class="animation_content">
                <div class="animation_content_three">
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/three_animation1.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">键等学园/键等</a>
                            <a href="#">第2话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/three_animation2.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">我被逐出队伍后过上慢生活</a>
                            <a href="#">第7话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/three_animation3.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">平家物语</a>
                            <a href="#">第10话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/three_animation4.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">世界顶尖的暗杀者,转生为异世界贵族</a>
                            <a href="#">第7话</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--周四-->
            <div class="animation_content">
                <div class="animation_content_four">
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/four_animation1.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">通灵王</a>
                            <a href="#">第32话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/four_animation2.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">迷宫标记者</a>
                            <a href="#">第7话</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--周五-->
            <div class="animation_content">
                <div class="animation_content_five">
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/five_animation1.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">白沙的水族馆</a>
                            <a href="#">第20话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/five_animation2.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">国王排名</a>
                            <a href="#">第6话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/five_animation3.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">妖怪手表</a>
                            <a href="#">第6话</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--周六-->
            <div class="animation_content">
                <div class="animation_content_sixe">
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/six_animation1.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">男孩遇见女孩</a>
                            <a href="#">第4话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/six_animation2.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">大正少女御伽话</a>
                            <a href="#">第7话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/six_animation3.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">结城友奈是勇者 第三季 / 大满开之章</a>
                            <a href="#">第8话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/six_animation4.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">烧窑的话也要马克杯 第二季</a>
                            <a href="#">第7话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/six_animation5.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">勇者斗恶龙 达伊的大冒险</a>
                            <a href="#">第45话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/six_animation6.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">半妖的夜叉姬 第二季</a>
                            <a href="#">第8话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/six_animation7.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">名侦探柯南</a>
                            <a href="#">第1084话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/six_animation8.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">世界尽头的圣骑士</a>
                            <a href="#">第7话</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--周日-->
            <div class="animation_content">
                <div class="animation_content_seven">
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/seven_animation1.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">创之界限</a>
                            <a href="#">第3话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/seven_animation2.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">无敌侠：舞动的英雄</a>
                            <a href="#">第8话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/seven_animation3.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">关于前辈很烦人的事</a>
                            <a href="#">第7话</a>
                        </div>
                    </div>
                    <div class="content">
                        <a href="#" class="pic"><img src="../images/seven_animation4.webp" alt=""></a>
                        <div class="txt">
                            <a href="#">博人传 火影忍者新时代</a>
                            <a href="#">第216话</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="animation_right">
            <div class="header">
                <span>排行榜</span>
                <a href="#">更多 ></a>
            </div>
            <div class="ranking_list">
                <div>
                    <span class="ranking ranking1">1</span>
                    <a href="#"><p>
                        <span title="国王排名" class="title">国王排名</span>
                        <span class="update">更新至第5话</span>
                    </a></p>
                </div>
                <div>
                    <span class="ranking ranking2">2</span>
                    <a href="#"><p>
                        <span title="世界顶尖的暗杀者,转生为异世界贵族" class="title">世界顶尖的暗杀者,转生为异世界贵族</span>
                        <span class="update">更新至第6话</span>
                    </a></p>
                </div>
                <div>
                    <span class="ranking ranking3">3</span>
                    <a href="#"><p>
                        <span title="关于前辈很烦人的事" class="title">关于前辈很烦人的事</span>
                        <span class="update">更新至第6话</span>
                    </a></p>
                </div>
                <div>
                    <span class="ranking">4</span>
                    <a href="#"><p>
                        <span title="我被逐出队伍后过上慢生活" class="title">我被逐出队伍后过上慢生活</span>
                        <span class="update">更新至第6话</span>
                    </a></p>
                </div>
                <div>
                    <span class="ranking">5</span>
                    <a href="#"><p>
                        <span title="宿命回响：命运节拍" class="title">宿命回响：命运节拍</span>
                        <span class="update">更新至第2话</span>
                    </a></p>
                </div>
                <div>
                    <span class="ranking">6</span>
                    <a href="#"><p>
                        <span title="世界尽头的圣骑士" class="title">世界尽头的圣骑士</span>
                        <span class="update">更新至第6话</span>
                    </a></p>
                </div>
                <div>
                    <span class="ranking">7</span>
                    <a href="#"><p>
                        <span title="LoveLive 爱与演唱会!超级明星!!" class="title">LoveLive 爱与演唱会!超级明星!!</span>
                        <span class="update">全12话</span>
                    </a></p>
                </div>
                <div>
                    <span class="ranking">8</span>
                    <a href="#"><p>
                        <span title="进化之实 踏上胜利的人生" class="title">进化之实 踏上胜利的人生</span>
                        <span class="update">更新至第6话</span>
                    </a></p>
                </div>
                <div>
                    <span class="ranking">9</span>
                    <a href="#"><p>
                        <span title="创之界限" class="title">创之界限</span>
                        <span class="update">更新至第2话</span>
                    </a></p>
                </div>
                <div>
                    <span class="ranking">10</span>
                    <a href="#"><p>
                        <span title="大正少女御伽话" class="title">大正少女御伽话</span>
                        <span class="update">更新至第6话</span>
                    </a></p>
                </div>
            </div>
        </div>
    </div>
    <!--右侧导航条-->
    <div class="nav_list">
        <div>
            <!--                <div class="item"><a href="#ad">推广</a></div>
                            <div class="item"><a href="#match">赛事</a></div>
                            <div class="item"><a href="#animation">番剧</a></div>-->
            <div class="item">推广</div>
            <div class="item">赛事</div>
            <div class="item">番剧</div>
            <div class="item" style="display: none" title="返回顶部">︽</div>
        </div>
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
            $(this).find("img").css({"transform":"scale(1.3)","transition":"0.5s"});
        },function () {
            $(this).find("img").css({"transform":"none","transition":"0.5s"});
        });

        /*更多列表*/
        $(".hidden").hover(function () {
            $(".hidden_list").slideDown("fast");
        },function () {
            $(".hidden_list").slideUp("fast");
        });

        /*番剧*/
        //时间的点击样式
        $(".time div").click(function () {
            $(this).css({"border-bottom":"1px solid #00a1d6","color":"#00a1d6"});
            $(this).siblings().css({"border-bottom":"none","color":"black"});
        });

        //随时间点击 切换显示内容
        var contents = $(".animation_content");
        var index = 0;
        $(contents[index]).siblings(".animation_content").hide();
        $(".time div").click(function () {
            index = $(".time div").index(this);
            $(contents[index]).show();
            $(contents[index]).siblings(".animation_content").hide();
        });

        /*滚动导航条*/
        var lists = [".ad", ".match", ".animation", "body"];
        $(".item").click(function() {
            var index = $(this).index();
            $("html,body").animate({scrollTop: $(lists[index]).offset().top}, 100);
            /*alert($(lists[index]).offset().top);*/
        });

        /*轮播图右侧 播放图标*/
        $(".video").hide();
        $(".screen_right .content").hover(function () {
            $(this).find(".video").fadeIn(800);
        },function () {
            $(this).find(".video").hide();
        });
    });

    /*轮播图*/
    var index = 0;
    var imgs = ["lb1.jpg", "lb2.jpg", "lb3.jpg", "lb4.jpg", "lb5.jpg"];
    $(".lb").fadeIn(1000);
    function show() {
        $(".lb").fadeOut(1000, function () {
            if ((index + 1) >= imgs.length) {
                index = -1;
            }
            index ++;
            var src = "./../images/" + imgs[index];
            $(".lb").attr("src", src);
            $(".lb").fadeIn(1000);
        });
    }
    setInterval("show()", 5000);

    /*右侧导航栏  返回顶部  的隐藏和显示*/
    window.onscroll = function() {scrollFunction()};

    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            document.getElementsByClassName("nav_list")[0].firstElementChild.lastElementChild.style.display = "block";
        } else {
            document.getElementsByClassName("nav_list")[0].firstElementChild.lastElementChild.style.display = "none";
        }
    }
    $("[class='a']");
</script>
</html>
