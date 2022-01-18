<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .personal-info{
            padding: 50px 20px 0;
            width: 789px;
        }
        .info-top{
            border-bottom: 1px solid #e5e9ef;
            padding-bottom: 40px;
            position: relative;
        }
        .info-mid1{
            padding: 36px 0;
            border-bottom: 1px solid #e5e9ef;
            position: relative;
        }
        .info-mid2{
            padding: 36px 0 30px;
            border-bottom: 1px solid #e5e9ef;
            position: relative;
        }
        .info-bot{
            padding: 36px 0 34px;
            position: relative;
        }
        .head-left{
            display: inline-block;
            vertical-align: top;
            position: relative;
            cursor: pointer;
            width: 64px;
            height: 64px;
            border-radius: 50%;
            overflow: hidden;
        }
        .head-right{
            display: inline-block;
            margin-left: 16px;
            width: 684px;
        }
        .user-name{
            display: inline-block;
            font-size: 18px;
            font-weight: 700;
            color: #222;
            margin-right: 8px;
            cursor: default;
        }
        .member-info{
            border: 1px solid #99a2aa;
            margin: 0 8px;
            color: #99a2aa;
            border-radius: 4px;
            cursor: default;
        }
        .top-mid>span{
            position: relative;
            display: inline-block;
            width: 684px;
            margin-top: 10px;

        }
        .pgs-bar-left{
            width: 48px;
            height: 24px;
            font-weight: 700;
            color: #fff;
            padding-left: 10px;
            font-size: 12px;
            line-height: 24px;
            cursor: default;
            display: inline-block;
            background: url("../img/icons_m_2.57e5263.png") no-repeat;
            background-position: -264px -852px;
        }
        .pgs-bar-right{
            width: 280px;
            height: 24px;
            line-height: 24px;
            background-color: #e5e9ef;
            margin-left: -15px;
            border-top-right-radius: 4px;
            border-bottom-right-radius: 4px;
            display: inline-block;
            position: relative;
            text-indent: -9999px;
            text-align: center;
        }
        .pgs-bar{
            display: inline-block;
            position: relative;
        }
        .pgs-bar-right>span{
            position: absolute;
            top: 0;
            left: 0;
            background-color: #ff905a;
            height: 24px;
            transition: all .3s ease-in-out;
            transition-delay: .3s;
            border-radius: 0 4px 4px 0;
        }
        .exp-num{
            height: 24px;
            color: #99a2aa;
            margin-left: 8px;
            font-size: 12px;
            line-height: 24px;
            cursor: default;

        }
        .update-info{
            position: absolute;
            top: 8px;
            width: 70px;
            height: 22px;
            display: inline-block;
            border-radius: 4px;
            border: 1px solid #ced3db;
            color: #6d757a;
            text-align: center;
            cursor: pointer;
            line-height: 24px;
            right: 90px;
            font-size: 12px;
        }
        .personal-space{
            position: absolute;
            top: 8px;
            width: 70px;
            height: 22px;
            display: inline-block;
            border-radius: 4px;
            border: 1px solid #ced3db;
            color: #6d757a;
            text-align: center;
            cursor: pointer;
            line-height: 24px;
            right: 0;
            padding-right: 10px;
            font-size: 12px;
        }
        .personal-space>i{
            position: absolute;
            background: url("../img/icons_m_2.57e5263.png") -26px -726px no-repeat;
            width: 18px;
            height: 22px;
            top: 2px;
            right: 0;
        }
        .bb{
            display: inline-block;
            width: 20px;
            margin-right: 8px;
            height: 20px;
            background: url("../img/icons_m_2.57e5263.png") no-repeat;
            background-position: -150px -534px;
        }
        .yb{
            display: inline-block;
            width: 20px;
            margin-right: 8px;
            height: 20px;
            background: url("../img/icons_m_2.57e5263.png") no-repeat;
            background-position: -150px -470px;
        }
        .info-mid1-icon{
            display: inline-block;
            width: 30px;
            height: 30px;
            background: url("../img/icons_m_2.57e5263.png") no-repeat;
            background-position: -145px -18px;
            margin-right: 6px;
            margin-left: 10px;
        }
        .info-mid1-title{
            font-size: 20px;
            color: #222;
            margin-right: 6px;
            vertical-align: top;
        }
        .info-mid1-item{
            display: inline-block;
            width: 186px;
            box-sizing: border-box;
            padding: 22px 0 0;
            position: relative;
        }
        .item-img{
            width: 72px;
            height: 72px;
            border-radius: 72px;
            background: url("../img/icons_m_2.57e5263.png") no-repeat;
            text-align: center;
            line-height: 72px;
            color: #fff;
            margin: 0 auto;
        }
        .right-none{
            display: inline-block;
            position: absolute;
            top: 54px;
            right: 0;
            width: 1px;
            height: 74px;
            border-left: 1px solid #e5e9ef;
        }
        .info-mid1-main{
            padding: 36px 0;
            border-bottom: 1px solid #e5e9ef;
            position: relative;
        }
        .info-mid2-icon{
            display: inline-block;
            width: 30px;
            height: 30px;
            background: url("../img/icons_m_2.57e5263.png") no-repeat;
            margin-right: 6px;
            margin-left: 10px;
            background-position: -145px -82px;
        }
        .info-mid2-cont{
            margin-top: 10px;
            overflow: hidden;
            padding-bottom: 4px;
        }
        .info-mid2-main{
            padding: 36px 0 30px;
            border-bottom: 1px solid #e5e9ef;
            position: relative;
        }
        .info-bot-main{
            padding: 36px 0 34px;
            display: inline-block;
            position: relative;
        }
        .info-bot-icon{
            display: inline-block;
            width: 30px;
            height: 30px;
            background: url("../img/icons_m_2.57e5263.png") no-repeat;
            background-position: -145px -146px;
            margin-right: 6px;
            margin-left: 10px;
        }
        .more-safe{
            position: absolute;
            top: 38px;
            width: 102px;
            padding: 0 10px;
            border-radius: 4px;
            border: 1px solid #ced3db;
            color: #6d757a;
            right: 0;
            height: 22px;
            display: inline-block;
            line-height: 20px;
            font-size: 12px;
            box-sizing: border-box;
            cursor: pointer;
        }
        .more-safe i{
            top: 0;
            vertical-align: middle;
            background: url("../img/icons_m_2.57e5263.png") no-repeat;
            background-position: -26px -726px;
            width: 18px;
            margin-left: 19px;
            right: 0;
            height: 22px;
            display: inline-block;
            position: absolute;
        }
        .info-bot-item{
            width: 360px;
            float: left;
            margin: 24px 22px 10px 0;
        }
        .bot-item-icon{
            width: 60px;
            height: 60px;
            border-radius: 60px;
            background: url("../img/icons_m_2.57e5263.png") no-repeat;
            display: inline-block;
        }
        .bot-item-cont{
            margin-left: 16px;
            display: inline-block;
            vertical-align: top;
        }
        .cont-text1{
            font-size: 16px;
            color: #222;
            margin-bottom: 8px;
        }
        .cont-text2{
            font-size: 12px;
            color: #99a2aa;
            margin-bottom: 8px;
        }
        .cont-btn{
            cursor: pointer;
            background-color: #22a1d6;
            color: #fff;
            border-radius: 4px;
            text-align: center;
            display: inline-block;
            width: 70px;
            height: 24px;
            line-height: 24px;
        }
        .item-text{
            font-size: 14px;
            color: #222;
            margin-top: 16px;
            width: 100%;
            text-align: center;
        }
        .cont-cont{
            width: 228px;
            margin: 15px auto 0;
        }
        .cont-cont-icon{
            display: inline-block;
            width: 90px;
            height: 48px;
            background: url("../img/xzvison.png") no-repeat;
        }
        .cont-cont-info{
            font-size: 12px;
            color: #99a2aa;
            display: inline-block;
            vertical-align: top;
        }
        .cont-cont-info p{
            font-size: 12px;
            color: #99a2aa;
        }
        .cont-cont-info span{
            cursor: pointer;
            border-radius: 4px;
            width: 102px;
            height: 24px;
            line-height: 24px;
            background-color: #22a1d6;
            color: #fff;
            margin: 8px 0 0 8px;
            display: inline-block;
            text-align: center;
            text-decoration: none;
        }
        .item-order{
            width: 80px;
            height: 20px;
            border-radius: 4px;
            background-color: #8a95a8;
            color: #fff;
            text-align: center;
            line-height: 19px;
            margin: 15px auto 0;
            font-size: 12px;
        }
        .item-img-1{
            color: #fff;
            font-size: 24px;
            font-weight: 700;
            font-style: normal;
            text-align: center;
            line-height: 72px;
        }
        .item-img-2{
            color: #fff;
            font-size: 12px;
            text-align: center;
            line-height: 72px;
        }
        .top-bot{
            margin-top: 15px;
        }
        .bb-num,.yb-num{
            margin-right: 12px;
            display: inline-block;
            line-height: 20px;
            font-size: 14px;
            color: #222;
            cursor: default;
            vertical-align: top;
            height: 20px;
        }
    </style>
</head>
<body>
    <div class="personal-info">
        <div class="info-top">
            <div class="head-left"><img src="" alt=""></div>
            <div class="head-right">
                <div class="top-top"><span class="user-name">${user}</span><span class="member-info"></span></div>
                <div class="top-mid"><span><div class="pgs-bar"><span class="pgs-bar-left"></span><span class="pgs-bar-right"><span></span></span></div><span class="exp-num">${experience}/28800</span><span class="update-info">修改资料</span><a href="" class="personal-space">个人空间 <i></i></a></span></div>
                <div class="top-bot"><a href="" class="bb"></a><span class="bb-num">${bNum}</span><a href="" class="yb"></a><span class="yb-num">${yNum}</span></div>
            </div>
        </div>
        <div class="info-mid1">
            <div class="info-mid1-main">
                <span class="info-mid1-icon"></span>
                <span class="info-mid1-title">每日奖励</span>
                <div>
                    <div class="info-mid1-item">
                        <div class="item-img" style="background-position: -252px -508px"></div>
                        <p class="item-text">每日登录</p>
                        <p class="item-order">5经验值到手</p>
                        <div class="right-none"></div>
                    </div>
                    <div class="info-mid1-item">
                        <div class="item-img" style="background-position: -252px -636px;">
                            <i class="item-img-1">5</i>
                            <i class="item-img-2">EXP</i>
                        </div>
                        <p class="item-text">每日观看视频</p>
                        <p class="item-order">未完成</p>
                        <div class="right-none"></div>
                    </div>
                    <div class="info-mid1-item">
                        <div class="item-img" style="background-position: -252px -636px;">
                            <i class="item-img-1">50</i>
                            <i class="item-img-2">EXP</i>
                        </div>
                        <p class="item-text">每日投币</p>
                        <p class="item-order">已获得0/50</p>
                        <div class="right-none"></div>
                    </div>
                    <div class="info-mid1-item">
                        <div class="item-img" style="background-position: -252px -636px;">
                            <i class="item-img-1">5</i>
                            <i class="item-img-2">EXP</i>
                        </div>
                        <p class="item-text">每日分享视频</p>
                        <p class="item-order">未完成</p>
                        <div class="right-none"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="info-mid2">
            <div class="info-mid2-main">
                <span class="info-mid2-icon"></span>
                <span class="info-mid1-title">成就勋章</span>
                <div class="info-mid2-cont">
                    <div class="cont-cont">
                        <div class="cont-cont-icon"></div>
                        <div class="cont-cont-info">
                            <p>你还没有领取过勋章哦！</p>
                            <span>查看勋章详情</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="info-bot">
            <div class="info-bot-main">
                <span class="info-bot-icon"></span>
                <span class="info-mid1-title">账号安全</span>
                <span class="more-safe">更多账号安全<i></i></span>
                <div>
                    <div class="info-bot-item">
                        <div class="bot-item-icon" style="background-position: -258px -2px"></div>
                        <div class="bot-item-cont">
                            <p class="cont-text1">首次绑定邮箱，获得20经验值</p>
                            <p class="cont-text2">绑定邮箱后即可使用邮箱登录</p>
                            <span class="cont-btn">去绑定</span>
                        </div>
                    </div>
                    <div class="info-bot-item">
                        <div class="bot-item-icon" style="background-position: -258px -130px"></div>
                        <div class="bot-item-cont">
                            <p class="cont-text1">首次绑定手机，获得50经验值</p>
                            <p class="cont-text2">绑定手机后即可使用手机号登录</p>
                            <span class="cont-btn">去绑定</span>
                        </div>
                    </div>
                    <div class="info-bot-item">
                        <div class="bot-item-icon" style="background-position: -258px -258px"></div>
                        <div class="bot-item-cont">
                            <p class="cont-text1">首次设置密保，获得30经验值</p>
                            <p class="cont-text2">设置密保，账号更安全</p>
                            <span class="cont-btn">去设置</span>
                        </div>
                    </div>
                    <div class="info-bot-item">
                        <div class="bot-item-icon" style="background-position: -258px -386px"></div>
                        <div class="bot-item-cont">
                            <p class="cont-text1">首次实名认证，获得50经验值</p>
                            <p class="cont-text2">实名认证成功后，可享受开通直播间等服务</p>
                            <span class="cont-btn">去认证</span>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>


</body>
</html>
