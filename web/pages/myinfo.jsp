<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .gender{
            background-color: #22a1d6;
        }
        .myInfo{
            float: left;
            width: 829px;
            border-left: 1px solid #ddd;
            background: #fff;
            min-height: 890px!important;
        }
        .user-setting{
            padding: 20px 20px 0;
            position: relative;
        }
        .user-name>label,.user-id>label,.user-sign>label,.user-sex>label,.user-birth>label,.user-school>label{
            width: 95px;
            text-align: right;
            margin-right: 20px;
            float: left;
            line-height: 30px;
        }
        .top-logo{
            float: left;
            width: 4px;
            height: 16px;
            margin-top: 18px;
            background-color: #00a1d6;
            border-radius: 4px;
        }
        .top-title{
            float: left;
            margin: 15px 0 0 5px;
            color: #00a1d6;
            font-size: 14px;
            cursor: default;
        }
        .input-inner{
            float: left;
            width: 225px;
            height: 30px;
            margin-right: 40px;
        }
        div>span{
            color: #aaa;
        }
        .user-name,.user-id,.user-sign,.user-sex,.user-birth,.user-school{
            float: left;
            width: 789px;
            margin-bottom: 22px;
        }
        .form-item-content{
            line-height: 30px;
            position: relative;
            font-size: 14px;

        }
        div textarea{
            min-height: 33px;
            float: left;
            width: 618px;
            height: 88px;
            resize: none;
            display: block;
            padding: 5px 7px;
            line-height: 1.5;
            color: #1f2d3d;
            background-color: #fff;
            background-image: none;
            border: 1px solid #bfcbd9;
            border-radius: 4px;
            transition: border-color .2s cubic-bezier(.645,.045,.355,1);
            font-size: 14px;
            box-sizing: border-box;
        }
        .radio-group>label{
            display: inline-block;
            position: relative;
        }
        .radio-group label span{
            margin-right: 20px;
            padding: 5px 8px;
            border: 1px solid #bfcbd9;
            border-radius: 5px!important;
            background: #f4f4f4;
            color: #717171;
            white-space: nowrap;
            text-align: center;
            box-sizing: border-box;
            outline: 0;
            cursor: pointer;
            transition: all .3s cubic-bezier(.645,.045,.355,1);
            font-size: 14px;
            display: inline-block;
            line-height: 1;
            vertical-align: middle;
        }
        .birth-input{
            width: 193px;
            position: relative;
            font-size: 14px;
            display: inline-block;
        }
        .birth-icon{
            position: absolute;
            width: 35px;
            height: 100%;
            right: 0;
            top: 0;
            text-align: center;
            color: #bfcbd9;
            transition: all .3s;
        }
        .birth-input input{
            height: 30px;
            color: #b7b7b7;
            background-color: #fff;
            border-radius: 4px;
            border: 1px solid #bfcbd9;
            box-sizing: border-box;
            line-height: 1;
            padding: 3px 10px;
            transition: border-color .2s cubic-bezier(.645,.045,.355,1);
            display: inline-block;
        }
        .form-bot>div{
            line-height: 30px;
            position: relative;
            font-size: 14px;
        }
        .form-bot{
            float: left;
            width: 789px;
        }
        .bot-space{
            width: 789px;
            height: 39px;
            border-bottom: 1px solid #e5e9ef;
            margin-bottom: 40px;
        }
        .btn-bg{
            float: left;
            width: 789px;
            height: 36px;
            position: relative;
        }
        .btn-bg button{
            width: 110px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            background: #00a1d6!important;
            border-color: #20a0ff;
            color: #fff;
            display: inline-block;
            line-height: 1;
            white-space: nowrap;
            cursor: pointer;
            padding: 10px 15px;
            border-radius: 4px;
            font-size: 14px;
            box-sizing: border-box;
        }
        .myInfo-top{
            height: 50px;
            padding-left: 30px;
            border-bottom: 1px solid #ddd;
        }
        .active{
            background-color: #00a1d6;
            color: white;
        }
    </style>
    <script>
        var phone = request.getParameter("phone");
        alert(phone)
    </script>
</head>
<body>
    <%
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
    %>
    <div class="myInfo">
        <div class="myInfo-top">
            <span class="top-logo"></span>
            <span class="top-title">我的信息</span>
        </div>
        <div class="user-setting">
            <div>
                <form action="${pageContext.request.contextPath}/user?opr=updateInfo&phone=<%=phone%>&password=<%=password%>" method="post" class="form-show">
                    <div class="user-name">
                        <label>昵称：</label>
                        <div class="form-item-content">
                            <div>
                                <input type="text" autocomplete="off" name="userName" value="${user.userName}" rows="2" maxlength="16" validateevent="true" class="input-inner">
                                <span>注：修改一次昵称需要消耗6个硬币</span>
                            </div>
                        </div>
                    </div>
                    <div class="user-id">
                        <label>用户ID：</label>
                        <div class="form-item-content">
                            <span>${user.userId}</span>
                        </div>
                    </div>
                    <div class="user-sign">
                        <label>我的签名：</label>
                        <div class="form-item-content">
                            <div>
                                <textarea placeholder="设置您的签名"  name="signature" rows="2" autocomplete="off" validateevent="true">${user.signature}</textarea>
                            </div>
                        </div>
                    </div>
                    <div class="user-sex">
                        <label>性别：</label>
                        <div class="form-item-content">
                            <div class="radio-group">
                                <label >
                                    <span id="gender" <c:if test="${user.gender==1}">class="gender"</c:if>>男</span>
                                </label>
                                <label >
                                    <span <c:if test="${user.gender==0}">class="gender"</c:if>>女</span>
                                </label>
                                <label >
                                    <span>保密</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="user-birth">
                        <label >出生日期：</label>
                        <div class="form-item-content">
                            <div class="birth-input">
                                <i class="birth-icon"></i>
                                <input type="date" id="date-select" name="birthday" placeholder="选择日期" value="${user.birthday}">
                            </div>
                        </div>
                    </div>
                    <div class="user-school">
                        <label>学校信息：</label>
                        <div class="form-item-content">
                            <span>*学校信息当前仅支持在App中进行编辑（需升级至6.34及以上版本）</span>
                        </div>
                    </div>
                    <div class="form-bot">
                        <div>
                            <div class="bot-space"></div>
                            <div class="btn-bg">
                                <button>保存</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="../js/jquery-3.6.0.js"></script>
    <script>
        $(function () {
            $(".radio-group span").click(function (){
                $(this).addClass("active").siblings().removeClass("active");
            })
        })
    </script>
</body>
</html>
