<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        .web-top li{
            list-style: none;
            margin-right: 12px;
        }
        a{
            text-decoration: none;
        }
        .web-top ul{
            height: 36px;
            display: flex;
            align-items: center;
        }
        .web-top ul li:nth-of-type(1){
            line-height: 32px;
            vertical-align: middle;
        }
        .top-right div div{
            margin-left: 12px;
        }
        .top-bg{
            width: 100%;
            background: url("../img/下载.png") repeat-x;
        }
        .top-img{
            width: 980px;
            height: 106px;
            margin: 0 auto;
            background: url("../img/rl_top.35edfde.png") no-repeat;
        }
        .main-cont{
            overflow: hidden;
            width: 980px;
            min-height: 394px;
            margin: 10px auto 100px;
            border: 1px solid #e1e2e5;
            box-shadow: 0 2px 4px rgba(0,0,0,.14);
            background: #fafafa;
            border-radius: 4px;
        }
        .main-list i{
            vertical-align: middle;
            display: inline-block;
            width: 18px;
            height: 36px;
            margin-left: 16px;
            background: url("../img/icons_m_2.57e5263.png");
        }
        .main-list li{
            height: 48px;
            line-height: 48px;
            cursor: pointer;
        }
        .main-list span{
            margin-left: 12px;
            font-size: 14px;
            font-family: MicrosoftYaHei;
        }
        .list-bot i{
            display: inline-block;
            width: 12px;
            height: 12px;
            background: url("../img/icons_m_2.57e5263.png");
            background-position: -26px -731px;
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            right: 14px;
        }
        .list-bot a{
            display: block;
            height: 100%;
            font-size: 16px;
            text-align: center;
            line-height: 43px;
            color: #222;
        }
        .list-bot{
            height: 43px;
            position: relative;
            border-bottom: 1px solid #e1e2e5;
        }
        .main-list{
            border-bottom: 1px solid #e1e2e5;
        }
        .main-list li{
            width: 100%;
        }
        .main-left{
            float: left;
            width: 150px;
        }
        .main-right{
            float: left;
            width: 829px;
            border-left: 1px solid #ddd;
            background: #fff;
            min-height: 890px!important;
        }

    </style>
</head>
<body>
    <%
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
    %>
    <div id="nav">
        <jsp:include page="header.jsp" />
    </div>
    <div class="top-bg">
        <div class="top-img">
        </div>
    </div>
    <div class="main-content">
        <div class="main-cont">
            <div class="main-left">
                <div style="height: 50px;text-align: center;line-height: 50px;font-size: 16px;color: #99a2aa;cursor: default;border-bottom: 1px solid #e1e2e5">个人中心</div>
                <ul class="main-list">
                    <%--<li class="main-jsp"><i style="background-position: -23px -15px"></i><span>首页</span></li>
                    <li><i style="background-position: -23px -975px"></i><span style="letter-spacing: 7px">大会员</span></li>
                    <li><i style="background-position: -23px -1231px"></i><span>会员积分</span></li>--%>
                    <li class="my-info"><i style="background-position: -23px -80px"></i><span>我的信息</span></li>
                    <%--<li class="my-icon"><i style="background-position: -23px -144px"></i><span>我的头像</span></li>
                    <li><i style="background: url('../img/xunzhang.png');background-size: cover;margin-bottom: 5px"></i><span>粉丝勋章</span></li>
                    <li><i style="background-position: -23px -207px"></i><span>成就勋章</span></li>
                    <li><i style="background-position: -23px -272px"></i><span>账号安全</span></li>
                    <li><i style="background-position: -727px -237px"></i><span>黑名单管理</span></li>
                    <li><i style="background-position: -23px -335px"></i><span>我的硬币</span></li>
                    <li><i style="background-position: -23px -398px"></i><span>我的记录</span></li>
                    <li><i style="background-position: -23px -463px"></i><span>实名认证</span></li>
                    <li><i style="background-position: -23px -592px"></i><span>邀请注册</span></li>
                </ul>
                <div class="list-bot"><a href="">个人空间 <i></i></a></div>
                <div class="list-bot"><a href="">我的钱包 <i></i></a></div>
                <div class="list-bot"><a href="">创作中心 <i></i></a></div>
                <div class="list-bot"><a href="">直播中心 <i></i></a></div--%>
            </div>
            <div class="main-right">
            </div>
        </div>
    </div>
    <script src="../js/jquery-3.6.0.js"></script>
    <script>
        $(function (){
            $(".main-right").load("p-main.jsp");
            $(".main-jsp").click(function (){
                $(".main-right").load("${pageContext.request.contextPath}/pages/p-main.jsp")
            })
            $(".my-info").click(function (){
                $(".main-right").load("${pageContext.request.contextPath}/user?opr=personal&phone=<%=phone%>&password=<%=password%>")
            })
            $(".my-icon").click(function (){
                $(".main-right").load("${pageContext.request.contextPath}/pages/myicon.jsp")
            })
            var oldColor="";
            $(".main-list>li").mouseover(function (){
                oldColor=$(this).css("background-color");
                $(this).css("background-color","#8a95a1")
            }).mouseout(function (){
                $(this).css("background-color",oldColor);
            })
        })
    </script>
</body>
</html>
