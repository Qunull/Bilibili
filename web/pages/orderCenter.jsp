<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单中心</title>
    <link rel="stylesheet" href="../css/orderCenter.css">
    <style>
        .order{
            cursor: pointer;
        }
    </style>
</head>
<body>
<div id="app">
    <div data-v-545f1b4f="" class="header">
        <div data-v-545f1b4f="" class="wrapper">
            <div data-v-545f1b4f="" class="left">
                <ul data-v-545f1b4f="">
                    <li data-v-545f1b4f="" class="logo"><a data-v-545f1b4f="" href="shop.jsp"></a></li>
                </ul>
            </div>
            <div data-v-545f1b4f="" class="right">
                <ul data-v-545f1b4f="">
                    <li data-v-545f1b4f="" class="order">
                        <i data-v-545f1b4f="" class="icons"></i><span data-v-545f1b4f="">
                        <a data-v-545f1b4f="">订单中心</a></span></li>
                    <li data-v-545f1b4f="" class="user-wrapper">
                        <div data-v-545f1b4f="" class="avatar">
                            <i data-v-545f1b4f="" class="vip-icon"></i>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="order-list-wrapper">
        <div class="order-list">
            <c:forEach items="${orderList}" var="order">
                <div class="order-item">
                    <div class="order-header-wrapper" now="1641429318745">
                        <div class="order-header-time">创建时间：${order.createDate}</div>
                        <div class="order-header-id">订单号：${order.orderId}</div>
                        <div class="order-header-status">已完成</div>
                    </div>
                    <div class="order-item-body-wrapper">
                        <div class="order-item-img" style="background-image: url(${order.goodsPic});"></div>
                        <div class="order-item-body">
                            <div class="order-item-name-wrapper">
                                <div class="name order-item-title-name" style="-webkit-box-orient: vertical;">${order.goodsName}</div>
                            </div>
                            <div class="order-item-count">1</div>
                            <div class="order-item-total">
                                <div class="order-item-total_money">${order.orderPrice}</div>
                            </div>
                        </div>
                       <%-- <div class="order-item-btn-group"><!---->
                            <div class="btn checkdetail">&lt;%&ndash;查看订单&ndash;%&gt;</div>
                        </div>--%>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="whole-pagination-wrapper">
            <div class="pagination-wrapper">
                <div class="arrow pagination-left-arrow disabled"></div>
                <div class="pagination"><span class="pageNum active">1</span></div>
                <div class="arrow pagination-right-arrow disabled"></div>
            </div>
        </div>
    </div>
    <div class="notify-wrapper"></div>
    <div class="back-top"></div>
    <div class="footer">
        <div class="footer-wrp">
            <div class="border"></div>
            <div class="footer-cnt clearfix">
                <div class="partner">
                    <div class="block left" style="padding-top: 0px;">
                        <div class="partner-banner"></div>
                    </div>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>
