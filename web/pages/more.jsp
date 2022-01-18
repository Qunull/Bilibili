<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更多活动</title>
    <link rel="stylesheet" href="../css/more.css">
    <script src="../js/jquery-3.6.0.js"></script>
    <script type="text/javascript">
        $(function (){
            $("#zhong span").click(function (){
                var index = $("#zhong span").index(this);
                $(this).css({
                    "border-bottom": "2px solid #00a1d6"
                }).siblings().css({
                    "border-bottom": "none"
                })
                if(index==0){
                    $(".hd").css("display","block")
                    $(".huati").css("display","none")
                    $(".gonggao").css("display","none")
                }else if(index==1){
                    $(".hd").css("display","none")
                    $(".huati").css("display","block")
                    $(".gonggao").css("display","none")

                }else if(index==2){
                    $(".hd").css("display","none")
                    $(".huati").css("display","none")
                    $(".gonggao").css("display","block")
                }else {

                }
            })
        })

    </script>
</head>
<body>
<div id="balance">
    <div class="top">
        <div>
            <a href="center.jsp"><img src="images/bilibili.png" alt="" class="a"></a>
            <a href="homePage.jsp"><img src="images/zhuzhan.png" alt=""></a>
            <img src="./images/topright.png" alt="" class="topright">
        </div>
    </div>
    <div id="biaoti">
        <div id="gonggao"><h1>活动公告</h1></div>
        <div id="banben"><span>版本中心</span><img src="images/right.png" alt=""></div>
    </div>
    <div id="zhong">
        <span class="hh">热门活动</span><span>话题</span><span>公告</span>
        <div class="hd">
            <img src="images/hd.png" alt="">
            <img src="./images/hd2.png" alt="" class="hd222">
        </div>
        <div class="huati">
            <img src="images/huati.png" alt="">
            <img src="images/ht222.png" alt="">
        </div>
        <div class="gonggao">
            <img src="images/gonggao.png" alt="">
            <img src="images/gg222.png" alt="" class="gg222">
        </div>
    </div>
</div>
</body>
</html>
