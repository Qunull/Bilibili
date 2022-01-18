<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>创作中心</title>
    <link rel="stylesheet" href="../css/center.css">
    <script src="../js/jquery-3.6.0.js"></script>
    <script type="text/javascript">
        var index = 1
        function show(){
            if((index+1)>5){
                index=0
            }
            index++
            var dd
            if(index===1){
                dd = 5
            }else {
                dd=index-1
            }


            $(function (){
                var ll = "#lun"+index
                var d = "#lun"+dd

                $(d).fadeOut(800,function (){
                    $(ll).fadeIn(800)
                })
            })
        }
        setInterval("show()",5000)
        $(function (){
            $("#py").click(function (){
                var tag=document.getElementById('pc')
                var content=tag.innerText
                content++
                document.getElementById("pc").innerHTML=content;
            })
            $("#gc").click(function (){
                var tag=document.getElementById('cy')
                var content=tag.innerText
                content++
                document.getElementById("cy").innerHTML=content;
            })

            $(".lunbo:eq(0)").css("display","block")

            $(".tt div").mouseover(function (){
                $(".right1").show()
            }).mouseout(function (){
                $(".right1").hide()
            })
            var count = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
            $("dt").click(function () {
                var index = $("dt").index(this);
                /*                alert(index)*/
                count[index]++
                $("dt").css("color","#212121")
                $("dd").css("color","#212121")
                $(this).css("color","#00a1d6")
                $(this).parent().find("dd:eq(0)").css("color","#00a1d6")
                if(count[index]%2!=0) {
                    $(this).parent().find("dd").slideDown()

                }else{
                    $(this).parent().find("dd").slideUp()
                }
            })
            $("dd").click(function (){
                $("dd").css("color","#212121")
                $(this).css("color","#00a1d6")
            })

            $(".right1").mouseover(function (){
                $(this).css("display","block")

            }).mouseout(function (){
                $(this).css("display","none")
            })
            $(".shuju:eq(1)").hide()
            $("p span:eq(0)").css({
                "color":"#00a1d6","font-weight":"700"
            })
            $("p span:eq(0)").click(function (){
                $("p span:eq(0)").css({
                    "color":"#00a1d6","font-weight":"700"
                })
                $("p span:eq(1)").css({
                    "font-size": "16px",
                    "color": "#212121"
                })
                $(".shuju:eq(1)").hide()
                $(".shuju:eq(0)").show()
            })
            $("p span:eq(1)").click(function (){
                $("p span:eq(1)").css({
                    "color":"#00a1d6","font-weight":"700"
                })
                $("p span:eq(0)").css({
                    "font-size": "16px",
                    "color": "#212121"
                })
                $(".shuju:eq(1)").show()
                $(".shuju:eq(0)").hide()
            })
            $(".lll ul li").mouseover(function (){
                $(this).css("background","#f9f9f9")
            }).mouseout(function (){
                $(this).css("background","#fff")
            })
            $(".right1 ul li").mouseover(function (){
                $(this).css("background","#f9f9f9")
            }).mouseout(function (){
                $(this).css("background","#fff")
            })
        })

    </script>
</head>
<body>
<div class="balance">
    <div class="top">
        <div>
            <a href="${pageContext.request.contextPath}/pages/center.jsp"><img src="../images/bilibili.png" alt="" class="a"></a>
            <a href="${pageContext.request.contextPath}/pages/homePage.jsp"><img src="../images/zhuzhan.png" alt=""></a>
            <img src="../images/topright.png" alt="" class="topright">
        </div>
    </div>
    <div class="root">
        <div class="tt">
            <div>
                <img src="../images/tougao.png" alt="">
                <span>投稿</span>
            </div>
        </div>
        <div class="lll">
            <ul>
                <li class="aa"><dl><dt>
                    <img src="../images/1.png" alt="">
                    <span>首页</span></dt>
                </dl>
                </li>
                <li class="aa"><dl>
                    <dt><img src="../images/2.png" alt="">
                        <span>内容管理</span>
                        <img src="../images/down.png" alt="" class="hou">
                    </dt>
                    <dd><span class="nr">稿件管理</span></dd>
                    <dd><span class="nr">申诉管理</span></dd>
                    <dd><span class="nr">字幕管理</span></dd>
                </dl>
                </li>
                <li class="aa"><dl><dt>
                    <img src="../images/3.png" alt="">
                    <span>数据中心</span></dt>
                </dl>
                </li>
                <li class="aa"><dl><dt>
                    <img src="../images/4.png" alt="">
                    <span>粉丝管理</span></dt>
                </dl>
                </li>
                <li class="aa"><dl><dt>
                    <img src="../images/5.png" alt="">
                    <span>互动管理</span>
                    <img src="../images/down.png" alt="" class="hou"></dt>
                    <dd><span class="hd">评论管理</span></dd>
                    <dd><span class="hd">弹幕管理</span></dd>
                </dl>
                </li>
                <li class="aa"><dl><dt>
                    <img src="../images/6.png" alt="">
                    <span>收益管理</span>
                    <img src="../images/down.png" alt="" class="hou"></dt>
                    <dd><span class="sy">创作激励</span></dd>
                    <dd><span class="nnn">充电计划</span></dd>
                    <dd><span class="nnn">悬赏计划</span></dd>
                    <dd><span class="nnn">花火平台</span></dd>
                </dl>
                </li>
                <li class="aa"><dl><dt>
                    <img src="../images/7.png" alt="">
                    <span>创作成长</span>
                    <img src="../images/down.png" alt="" class="hou"></dt>
                    <dd><span class="nnn">任务成就</span></dd>
                    <dd><span class="nnn">创作学院</span></dd>
                </dl>

                </li>
                <li class="aa"><dl><dt>
                    <img src="../images/8.png" alt="">
                    <span>创作权益</span>
                    <img src="../images/down.png" alt="" class="hou"></dt>
                    <dd><span class="nnn">版权保护</span></dd>
                    <dd><span class="nnn">bilibili认证</span></dd>
                </dl>
                </li>
                <li class="aa"><dl><dt>
                    <img src="../images/9.png" alt="">
                    <span>创作实验室</span>
                </dt>
                </dl>
                </li>
                <li class="aa"><dl><dt>
                    <img src="../images/10.png" alt="">
                    <span>创作公约</span>
                </dt>
                </dl>
                </li>
                <li class="aa"><dl><dt>
                    <img src="../images/11.png" alt="">
                    <span>创作设置</span>
                </dt>
                </dl>
                </li>
            </ul>
        </div>
    </div>
    <div class="right1">
        <ul>
            <li>
                <img src="../images/21.png" alt="">
                <span>视频投稿</span>
            </li>
            <li>
                <img src="../images/22.png" alt="">
                <span>专栏投稿</span>
            </li>
            <li>
                <img src="../images/23.png" alt="">
                <span>互动视频投稿</span>
            </li>
            <li>
                <img src="../images/24.png" alt="">
                <span>音频投稿</span>
            </li>
            <li>
                <img src="../images/25.png" alt="">
                <span>贴纸投稿</span>
            </li>
            <li>
                <img src="../images/26.png" alt="">
                <span>视频素材投稿</span>
            </li>
            <li>
                <img src="../images/27.png" alt="">
                <span>虚拟形象问题</span>
            </li>
        </ul>
    </div>
    <div class="midd">
        <div id="lun1" class="lunbo">
            <img src="../images/l1.png" alt="" style="display: block">
        </div>
        <div id="lun2" class="lunbo">
            <img src="../images/l2.png" alt="" >
        </div>
        <div id="lun3" class="lunbo">
            <img src="../images/l3.png" alt="" >
        </div>
        <div id="lun4" class="lunbo">
            <img src="../images/l4.png" alt="" >

        </div>
        <div id="lun5" class="lunbo">
            <img src="../images/l5.png" alt="" >
        </div>
        <div class="youyou">
            <div class="huodong">
                <ul>
                    <span class="z">热门活动</span><a href="more.html" class="y" target="_blank">更多</a>
                    <li>
                        <span id="py" class="zz">配音大赛4.0</span>
                        <span id="pc" class="yy">8409</span><span class="cc">人参与</span></li>
                    <li>
                        <span id="gc" class="zz">鬼畜星探计划</span>
                        <span id="cy" class="yy">2400</span><span class="cc">人参与</span></li>
                </ul>
            </div>
            <div class="daka">
                <img src="../images/daka.png" alt="">
            </div>
        </div>
        <p><span class="shipin">视频数据</span>&nbsp;&nbsp;<span class="shipin">专栏数据</span><span class="meiri">每日中午12点更新昨日数据 ></span></p>
        <div class="shuju">
            <table width="100%" border="0" cellspacing="1" cellpadding="0">
                <tr>
                    <td><div><span class="num1">粉丝数</span><img src="../images/right.png" alt=""><br><span class="num2">20</span><br><span class="num3">昨日 </span><span class="num4">--</span></div></td>
                    <td><div><span class="num1">视频播放</span><img src="../images/right.png" alt=""><br><span class="num2">157</span><br><span class="num3">昨日 </span><span class="num4">--</span></div></td>
                    <td><div><span class="num1">评论数</span><br><span class="num2">6</span><br><span class="num3">昨日 </span><span class="num4">--</span></div></td>
                </tr>
                <tr>
                    <td><div><span class="num1">弹幕数</span><br><span class="num2">0</span><br><span class="num3">昨日 </span><span class="num4">--</span></div></td>
                    <td><div><span class="num1">点赞数</span><br><span class="num2">5</span><br><span class="num3">昨日 </span><span class="num4">--</span></div></td>
                    <td><div><span class="num1">分享数</span><br><span class="num2">2</span><br><span class="num3">昨日 </span><span class="num4">--</span></div></td>
                </tr>
            </table>
        </div>
        <div class="shuju">
            <table width="100%" border="0" cellspacing="1" cellpadding="0">
                <tr>
                    <td><div><span class="num1">粉丝数</span><img src="../images/right.png" alt=""><br><span class="num2">20</span><br><span class="num3">昨日 </span><span class="num4">--</span></div></td>
                    <td><div><span class="num1">阅读量</span><br><span class="num2">0</span><br><span class="num3">昨日 </span><span class="num4">--</span></div></td>
                    <td><div><span class="num1">评论数</span><br><span class="num2">0</span><br><span class="num3">昨日 </span><span class="num4">--</span></div></td>
                </tr>
                <tr>
                    <td><div><span class="num1">收藏数</span><br><span class="num2">0</span><br><span class="num3">昨日 </span><span class="num4">--</span></div></td>
                    <td><div><span class="num1">点赞数</span><br><span class="num2">0</span><br><span class="num3">昨日 </span><span class="num4">--</span></div></td>
                    <td><div><span class="num1">分享数</span><br><span class="num2">0</span><br><span class="num3">昨日 </span><span class="num4">--</span></div></td>
                </tr>
            </table>
        </div>
        <div id="pinlun"><img src="../images/pinlun.png" alt=""></div>
        <div id="dibu"><img src="../images/dibu.png" alt=""></div>
    </div>
</div>
</div>
</body>
</html>
