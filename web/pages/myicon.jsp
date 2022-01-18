<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2022/1/7
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .icon-page{
            width: 830px;
            text-align: center;
        }
        .icon-head{
            position: relative;
            text-align: center;
            padding: 0 20px;
            border-bottom: 1px solid #e5e9ef;
        }
        .icon-head>div{
            position: relative;
            font-size: 14px;
            color: #222;
            height: 50px;
            line-height: 50px;
            text-align: left;
        }
        .icon-head span{
            color: #6d757a;
            cursor: pointer;
            font-size: 14px;
            line-height: 50px;
            text-align: left;
            font-family: Microsoft YaHei;
        }
        .icon-main{
            padding: 80px 20px 56px;
            display: inline-block;
        }
        .pic-select{
            float: left;
            position: relative;
            margin-right: 40px;
        }
        .cont-bg{
            width: 180px;
            height: 180px;
            background-color: #000;
            border-radius: 4px;
            border: 1px solid #e5e9ef;
        }
        .pic-change{
            cursor: pointer;
            background: #f1f2f5;
            width: 180px;
            height: 180px;
            position: absolute;
            top: 0;
            left: 0;
            border: 1px solid #e5e9ef;
            border-radius: 4px;
            transition: all .6s ease;
        }
        .pic-change i{
            margin: 52px auto 0;
            width: 54px;
            height: 46px;
            display: block;
            background: url("img/icons_m_2.57e5263.png");
            background-position: -101px -1065px;
        }
        .pic-change span{
            display: block;
            font-family: MicrosoftYaHei;
            font-size: 16px;
            color: #6d757a;
            line-height: 20px;
            margin-top: 10px;
            padding: 0 12px;
            letter-spacing: 0;
        }
        .pic-space{
            height: 182px;
            width: 1px;
            background: #e5e9ef;
            float: left;
        }
        .pic-now{
            margin-left: 40px;
            margin-top: 30px;
            float: left;
        }
        .pic-now div{
            width: 96px;
            height: 96px;
            overflow: hidden;
            border-radius: 50%;
            border: 1px solid #e6eaf0;
            background-size: cover;
        }
        .pic-now span{
            margin-top: 20px;
            font-size: 12px;
            color: #99a2aa;
        }
        .icon-bot{
            text-align: center;
            margin-top: 40px;
        }
        .change-btn{
            background: #f4f5f7;
            border-color: #f4f5f7;
            color: #ccd0d7;
            cursor: auto;
            display: inline-block;
            width: 140px;
            height: 40px;
            font-size: 14px;
            line-height: 32px;
            border-radius: 4px;
            text-decoration: none;
        }
        #file-input{
            display: none;
        }

    </style>
</head>
<body>
    <div class="icon-page">
        <div class="icon-head">
            <div><span>更换头像</span></div>
        </div>
        <div class="icon-cont">
            <div class="icon-main">
                <div class="pic-select">
                    <div class="cont-bg"></div>
                    <label for="file-input" class="pic-change">
                        <i></i>
                        <span>选择图片</span>
                    </label>
                    <input type="file" id="file-input" accept="image/png,image/jpg,image/jpeg,image/gif">
                </div>
                <div class="pic-space"></div>
                <div class="pic-now">
                    <div><img style="border-radius: 4px"></div>
                    <span>当前头像</span>
                </div>
            </div>
            <p style="line-height: 16px;color: #99a2aa">请选择图片上传：大小180 * 180像素支持JPG、PNG等格式，图片需小于2M</p>
            <div class="icon-bot">
                <input type="button" value="更新" class="change-btn">
            </div>
        </div>
    </div>

</body>
</html>
