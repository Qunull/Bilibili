<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/register.css">
</head>
<body>
<div data-v-2c844fd9="">
    <div id="nav">
        <jsp:include page="header.jsp" />
    </div>
</div>
<div data-v-7ae9d9c0="">
    <div data-v-7ae9d9c0="" class="top-banner">
        <img src="../img/rl_top.35edfde.png">
    </div>
    <div data-v-7ae9d9c0="" class="title-line">
        <span class="tit" style="font-size: 38px;">注册</span>
    </div>
    <div data-v-7ae9d9c0="" class="register-container">
        <form action="${pageContext.request.contextPath}/user?opr=register" method="post" id="registerForm" class="report-wrap-module">
            <div data-v-7ae9d9c0="" class="form-group">
                <div data-v-7ae9d9c0="" class="el-input">
                    <input type="text" autocomplete="off" name="userName" id="userName" placeholder="账号" class="el-input__inner" required>
                </div>
            </div>
            <div data-v-7ae9d9c0="" class="register-hidden-gruop">
                <div data-v-7ae9d9c0="" class="safe_window" style="display: block;">
                    <div data-v-7ae9d9c0="" class="a_pw">
                        <div class="safe_line bc0001"></div>
                        <div class="safe_line ff9537"></div>
                        <div class="safe_line ffd800"></div>
                        <div class="safe_line b5dc05"></div>
                        <div class="safe_line e7e7e7e"></div>
                    </div>
                </div>
            </div>
            <div data-v-7ae9d9c0="" class="form-group">
                <div data-v-7ae9d9c0="" class="el-input">
                    <input type="text" autocomplete="off" name="phone" id="phone" placeholder="手机号" class="el-input__inner" required>
                </div>
            </div>
            <div data-v-7ae9d9c0="" class="register-hidden-gruop">
                <div data-v-7ae9d9c0="" class="safe_window" style="display: block;">
                    <div data-v-7ae9d9c0="" class="a_pw">
                        <div class="safe_line bc0001"></div>
                        <div class="safe_line ff9537"></div>
                        <div class="safe_line ffd800"></div>
                        <div class="safe_line b5dc05"></div>
                        <div class="safe_line e7e7e7e"></div>
                    </div>
                </div>
            </div>
            <div data-v-7ae9d9c0="" class="form-group">
                <div data-v-7ae9d9c0="" class="el-input">
                    <input type="password" autocomplete="off" name="password" id="password" placeholder="密码（6-16个字符组成，区分大小写）" class="el-input__inner" required>
                </div>
                <p data-v-7ae9d9c0="" class="error-message"></p>
            </div>
            <div data-v-7ae9d9c0="" class="register-hidden-gruop"></div>
            <div data-v-7ae9d9c0="" class="form-group">
                <div data-v-7ae9d9c0="" class="input-with-select el-input el-input-group el-input-group--prepend">
                    <div class="el-input-group__prepend"></div>
                    <p data-v-7ae9d9c0="" class="error-message"></p>
                </div>
            </div>
            <div data-v-7ae9d9c0="" class="form-group register-hidden-gruop text-right"></div>
            <div data-v-7ae9d9c0="" class="form-group yzm yzm_buttom_a back-fff">
                <div data-v-7ae9d9c0="" id="captchCheck" class="check" style="display: none;"></div>
                <p data-v-7ae9d9c0="" class="error-message"></p>
            </div>
            <div data-v-7ae9d9c0="" class="form-group">
                <input type="submit" value="注册" id="register" class="el-button btn-full el-button--primary" style="width: 420px;">
            </div><br>
            <div data-v-7ae9d9c0="" id="register_pc_direct_login" class="register-hidden-gruop text-right">
                <a data-v-7ae9d9c0="" href="${pageContext.request.contextPath}/pages/login.jsp">已有账号，直接登录&gt;</a>
            </div>
        </form>
    </div>
</div>
</body>
<script src="../js/jquery-3.6.0.js"></script>
<script>
    $("#register").click(function () {
        alert("注册成功！")
    })
</script>
</html>
