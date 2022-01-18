<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>bilibili会员购</title>
    <link rel="stylesheet" href="../css/goodsDetails.css">
    <style>
        .malldetail__info__detail__button{
            cursor: pointer;
        }
        .a-header-right{
            width: 300px;
            margin-left: 730px;
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
            cursor: pointer;
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
<!--顶部-->
<div id="app">
    <div data-v-7becb7b9="" class="nav-header-wrapper">
        <div data-v-7becb7b9="" class="nav-header">
            <div data-v-7becb7b9="" class="nav-header-logo"></div>
            <div data-v-7becb7b9="" class="nav-header-logo-sub">商城</div>
            <div data-v-7becb7b9="" class="icon nav-header-tv-icon"></div>
            <div data-v-7becb7b9="" class="nav-header-mainsite">主站</div>    <!----> <!---->
            <div class="a-header-right">
                <div class="a-header-right-t1"><img src="../img/xiaobenzi.png" alt=""></div>
                <div class="a-header-right-t2"><p>订单中心</p></div>
            </div>
        </div>
    </div>
    <!--中间商品详情-->
    <div class="malldetail">
        <div class="malldetail__bread">
            <div class="bread-wrapper"><span><a href="//www.bilibili.com">Bilibili</a></span> <span
                    class="symbol">&gt;</span> <span><a href="">会员购</a></span> <span
                    class="symbol">&gt;</span> <span class="project-name">${goods.goodsName}</span></div>
        </div>
        <div class="malldetail__info__wrap">
            <div class="malldetail__info">
                <div class="malldetail__info__mainimg"
                     style="background-image: url(${goods.goodsPic});"></div>
                <div class="malldetail__info__detail">
                    <div class="malldetail__info__detail__title">${goods.goodsName}</div>
                    <div class="malldetail__info__detail__brief"></div>
                    <div class="malldetail__info__detail__line malldetail__info__detail__line--price">
                        <div class="malldetail__info__detail__line__label">售价</div>
                        <div class="malldetail__info__detail__line__value">
                            <div class="malldetail__info__detail__line__value__unit">￥</div>
                            <div class="malldetail__info__detail__line__value__text">${goods.goodsPrice}</div>
                        </div>
                    </div>
                    <div class="malldetail__info__detail__line">
                        <div class="malldetail__info__detail__line__label">IP</div>
                        <div class="malldetail__info__detail__line__value">哔哩哔哩</div>
                    </div>
                    <div class="malldetail__info__detail__line">
                        <div class="malldetail__info__detail__line__label">品牌</div>
                        <div class="malldetail__info__detail__line__value">${goods.goodsBrand}</div>
                    </div>
                    <!--购买按钮-->
                    <div class="malldetail__info__detail__button"></div>
                    <div class="malldetail__qrcode__container" style="display: none;">
                        <div class="malldetail__qrcode__explain">为了保障您的购物体验 请使用 bilibili app 购买</div>
                        <div class="malldetail__qrcode__explain2">App &gt; 我的 &gt; 扫一扫</div>
                        <div class="malldetail__qrcode"
                             title="https://mall.bilibili.com/detail.html?noTitleBar=1&amp;itemsId=10059535&amp;msource=PC_detail#itemsId=10059535">
                            <canvas width="172" height="173" style="display: none;"></canvas>
                            <img alt="Scan me!" src="data:image/png;base64,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" style="display: block;"></div>
                    </div>
                    <div class="malldetail__info__detail__line" style="margin-top: 16px;">
                        <div class="malldetail__info__detail__line__label">保障</div>
                        <div class="malldetail__info__detail__line__value malldetail__info__detail__line__value--ensure">
                            <div class="malldetail__info__detail__line__value__ensure">正品保障</div>
                            <div class="malldetail__info__detail__line__value__ensure">专业包装</div>
                            <div class="malldetail__info__detail__line__value__ensure">满129包邮</div>
                            <div class="malldetail__info__detail__line__value__ensure">支持7天无理由</div>
                            <div class="malldetail__info__detail__line__value__ensure">48h内发货</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--商品图片-->
        <div class="malldetail__info__detailinfo">
            <div class="malldetail__info__detailinfo__tabs">
                <div class="malldetail__info__detailinfo__tabs__tab malldetail__info__detailinfo__tabs__tab--selected">
                    商品详情
                </div>
                <div class="malldetail__info__detailinfo__tabs__tab">购买须知</div>
            </div>
            <div class="malldetail__info__detail__content__wrap">
                <div class="malldetail__info__detail__content">
                    <div class="malldetail__info__detail__content__attrs">
                        <div class="malldetail__info__detail__content__attrs__attr"><label>尺寸</label> <span>挂件高约10cm；抱枕高约20cm</span>
                        </div>
                        <div class="malldetail__info__detail__content__attrs__attr"><label>材质</label> <span>聚酯纤维</span>
                        </div>
                        <div class="malldetail__info__detail__content__attrs__attr"><label>面料</label> <span>涤纶</span>
                        </div>
                        <div class="malldetail__info__detail__content__attrs__attr"><label>填充物</label> <span>聚酯纤维</span>
                        </div>
                        <div class="malldetail__info__detail__content__attrs__line"></div>
                    </div>
                    <div class="malldetail__info__detail__content__text"><p>
                        <c:forEach items="${imgs}" var="img">
                            <img src="${img}" alt="">
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <!--右下角悬浮导航-->
        <%--<div class="toolbar-wrapper">
            <div class="left-slider-wrapper">
                <a target="_blank" href="/platform/feedbacklist.html" class="service-wrapper">
                    <div class="service-icon"></div>
                    <div class="toolbar-title">建议</div>
                </a>
            </div>
            <div class="scroll-top-wrapper" style="transform: translate3d(0px, 0px, 0px); transition: all 0.55s ease 0s;">
                <div class="scroll-icon"></div>
                <div class="toolbar-title">顶部</div>
            </div>
        </div>--%>
        <!--底部-->
        <div class="footer">
            <div class="footer-wrp">
                <div class="border"></div>
                <div class="footer-cnt clearfix">
                    <div class="partner">
                        <div class="block left" style="padding-top: 0px;">
                            <div class="partner-banner"></div>
                        </div>
                        <div class="block left" style="margin: 0px 68px 0px 115px; line-height: 24px; float: none;">
                            <div class="isShowDomain"><p>广播电视节目制作经营许可证：<span>（沪）字第1248号 </span> | 网络文化经营许可证：<span>沪网文[2013]0480-056号</span>
                                | 信息网络传播视听节目许可证：<span>0910417</span>互联网ICP备案：<span>沪ICP备13002172号-3</span> 沪ICP证：<span>沪B2-20100043</span>
                                | 违法不良信息举报邮箱：help@bilibili.com | 违法不良信息举报电话：4000233233 转 3 ｜<a
                                        href="https://i0.hdslb.com/bfs/kfptfe/floor/fd73bb12a4e3f06352c5a72b671b56132fc70abd.jpg"
                                        target="_blank"><span>营业执照</span></a></p>
                                <p>
                                    网上有害信息举报专区：
                                    <a href="http://www.12377.cn/?spm=a2hww.20023042.0.0" target="_blank">
                                        <img src="//static.hdslb.com/images/12377.png" width="16" height="16" style="vertical-align: sub;"> 中国互联网违法和不良信息举报中心</a> |
                                    <a href="http://www.shjbzx.cn" target="_blank"><i class="icons-footer icons-footer-report"></i><span> 上海互联网举报中心</span></a> |
                                    <a href="http://jb.ccm.gov.cn/" target="_blank">12318 全国文化市场举报网站</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script src="../js/jquery-3.6.0.js"></script>
<script>
    $(function () {
        $(".nav-header-mainsite").click(function () {
            window.location = "${pageContext.request.contextPath}/user?opr=home&phone=${user.phone}&password=${user.password}";
        })

        $(".malldetail__info__detail__button").click(function () {
            alert("加入订单成功！");
            window.location = "${pageContext.request.contextPath}/goods?opr=addGoodsOrder&goodsId=${goods.goodsId}";
        })

        $(".a-header-right-t2").click(function () {
            window.location = "${pageContext.request.contextPath}/goods?opr=orderList";
        })
    })
</script>
</html>
