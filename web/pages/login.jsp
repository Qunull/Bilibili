<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" href="../css/login.css">
    <style>
        .form-login .input-box .btn-box  .btn-reg {
            margin-left: 37px;
        }
    </style>
    <script src="../js/jquery-3.6.0.js"></script>
    <script>
        /*表单非空验证*/
        function check() {
            var phone = $("#phone").val();
            var password = $("#password").val();

            if ((phone == null || phone == "")) {
                alert("账号不能为空！")
                return false;
            }else if (password == null || password == ""){
                alert("密码不能为空！")
                return false;
            }else {
                return true;
            }
        }
    </script>
</head>
<body>
<div data-v-2c844fd9="">
    <!--顶部导航栏-->
    <div id="nav">
        <jsp:include page="header.jsp" />
    </div>
    <div data-v-2c844fd9="" class="top-banner">
        <img src="//s1.hdslb.com/bfs/static/passport/static/img/rl_top.35edfde.png"></div>
    <div data-v-2c844fd9="" class="title-line"><span class="tit" style="font-size: 38px;">登录</span></div>
    <div data-v-2c844fd9="" class="login-box clearfix">
        <!--左侧二维码-->
        <div data-v-2c844fd9="" class="login-left">
            <div data-v-2c844fd9="" class="qrcode-login">
                <div class="qrcode-con"><i class="tv-icon"></i>
                    <div class="qrcode-box">
                        <div class="qrcode-tips mouseenter"></div>
                        <div class="qrcode-img"
                             title="https://passport.bilibili.com/qrcode/h5/login?oauthKey=2bf9ff15727a6f066f94792457a4544c">
                            <canvas width="140" height="140" style="display: none;"></canvas>
                            <img src="data:image/png;base64,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"
                                 style="display: block;"></div>
                        <div class="status">
                            <div class="overdue">点击刷新</div> <!----></div>
                    </div>
                </div>
                <div class="qrcode-footer">
                    <p class="status-txt">二维码已失效</p>
                    <p class="app-link">请使用 <a href="//app.bilibili.com/" target="_blank">哔哩哔哩客户端</a><br>扫码登录<br>或扫码下载APP</p> <!----></div>
            </div>
        </div>
        <div data-v-2c844fd9="" class="line"></div>
        <!--右侧登录-->
        <div data-v-2c844fd9="" class="login-right">
            <div data-v-2c844fd9="" class="form-login">
                <div id="geetest-wrap" class="input-box">
                    <div>
                        <div class="type-tab"><span class="active">密码登录</span></div>
                        <form action="${pageContext.request.contextPath}/user?opr=doLogin" method="post" onsubmit="return check()">
                            <input type="hidden" name="msg" value="">
                            <div>
                                <!--手机号-->
                                <div class="item username status-box">
                                    <input type="text" value="" placeholder="你的账号" name="phone" id="phone" maxlength="50" autocomplete="off" class=""> <span class="status"></span>
                                    <div class="text clearfix"><p class="tips"></p></div> <!----></div>
                                <!--密码-->
                                <div class="item password status-box">
                                    <input type="password" placeholder="密码" name="password" id="password" class=""> <span class="status"></span>
                                    <div class="text clearfix">
                                        <p class="tips"></p>
                                    </div>
                                </div> <!---->
                                <div class="item gc clearfix"></div>
                            </div>
                            <div class="btn-box">
                                <input type="submit" class="btn btn-login" value="登录">
                                <a href="${pageContext.request.contextPath}/pages/register.jsp" class="btn btn-reg">注册</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</html>
