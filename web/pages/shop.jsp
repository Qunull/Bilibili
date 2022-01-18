<%@ page import="entity.Goods" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商城</title>
    <link rel="stylesheet" href="../css/shop.css">
    <style>
        .mallhome__selector__line__container__text{
            cursor: pointer;;
        }
        .a-header-right{
            width: 300px;
            margin-left: 730px;
            cursor: pointer;
        }
        .a-header-right-t1{
            display: inline-block;
        }
        .a-header-right-t1 img{
            margin-bottom: 5px;
            width: 54px;
            height: 54px;
            vertical-align: middle;
        }
        .a-header-right-t2{
            height: 54px;
            display: inline-block;
        }
        .a-header-right-t2 p{
            height: 54px;
            line-height: 54px;
        }
        .a-header-right-t3{
            display: inline-block;
            height: 40px;
            width: 40px;
            vertical-align: middle;
            margin-left: 10px;
        }
        .a-header-right-t3 img{
            height: 40px;
            width: 40px;
            border-radius: 50%;
        }
    </style>
</head>
<body>
<div id="all">
    <div class="a-header-wrapper">
        <div class="a-header">
            <div class="a-header-logo"></div>
            <div class="a-header-sub"></div>
            <div class="icon a-header-tv-icon"></div>
            <div class="a-header-mainsite"> 主站</div>
            <div class="a-header-right">
                <div class="a-header-right-t1"><img src="../img/xiaobenzi.png" alt=""></div>
                <div class="a-header-right-t2"><p>订单中心</p></div>
            </div>
        </div>      
    </div>
    <div class="mallhome__selector">
        <div class="mallhome__selector__line" style="border-bottom-color: rgb(231, 231, 231);">
            <div class="mallhome__selector__line__label">分类</div>
            <div class="mallhome__selector__line__container">
                <div class="mallhome__selector__line__container__text">家居生活</div>
                <div class="mallhome__selector__line__container__text">电子周边</div>
                <div class="mallhome__selector__line__container__text">周边鞋服</div>
                <div class="mallhome__selector__line__container__text">键盘鼠标</div>
                <div class="mallhome__selector__line__container__text">耳机</div>
                <div class="mallhome__selector__line__container__text">漫画</div>
                <div style="clear: both;"></div>
            </div>
            <div style="clear: both;"></div>
        </div>
        <div class="mallhome__selector__line" style="border-top: 0px;"><%--
            <div class="mallhome__selector__line__label">筛选</div>
            <div class="mallhome__selector__line__container">
                <div class="mallhome__selector__line__container__text mallhome__selector__line__container__text--selected">
                    综合
                </div>
                <div class="mallhome__selector__line__container__text">销量</div>
                <div class="mallhome__selector__line__container__text mallhome__selector__line__container__text--sort">
                    价格
                </div>
                <div style="clear: both;"></div>
            </div>
            <div style="clear: both;"></div>
        </div>--%>
    </div>
    <div class="mallhome__list">
        <c:forEach items="${goodsList}" var="goods" varStatus="status">
            <div class="mallhome__list__card">
                <input type="hidden" value="${goods.goodsId}">
                <div class="mallhome__list__card__img" style="background: url(${goods.goodsPic});"></div>
                <div class="mallhome__list__card__label">${goods.goodsName}</div>
                <div class="mallfhome__list__card__price">
                    <div class="mallhome__list__card__price__unit">￥</div>
                    <div class="mallhome__list__card__price__value">${goods.goodsPrice}</div>
                </div>
            </div>
        </c:forEach>
        <div class="mallhome__list__line"></div>
    </div>
</div>
</body>
<script src="../js/jquery-3.6.0.js"></script>
<script>
    $(function () {
        $(".a-header-mainsite").click(function () {
            window.location = "${pageContext.request.contextPath}/user?opr=home&phone=${user.phone}&password=${user.password}";
        })
        $(".mallhome__list__card").click(function () {
            var goodsId = $(this).find($("input")).val();
            window.location = "${pageContext.request.contextPath}/goods?opr=goodsDetails&goodsId=" + goodsId;
        })
        $(".a-header-right-t2").click(function () {
            window.location = "${pageContext.request.contextPath}/goods?opr=orderList";
        })
        $(".mallhome__selector__line__container__text").click(function () {
            var categoryName = $(this).text();
            window.location = "${pageContext.request.contextPath}/goods?opr=goodsByCategory&categoryName=" + categoryName;
        })
    })
</script>
</html>
