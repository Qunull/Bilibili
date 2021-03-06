<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人主页</title>
    <link rel="stylesheet" type="text/css" href="../css/person.css"/>
</head>
<body>
<!-- 头部模块 -->
<div id="nav">
    <jsp:include page="header.jsp" />
</div>
<!-- 头部信息 -->
<div class="head">
    <div class="wrap">
        <div class="bg">
            <!-- 这里是头像部分 -->
            <div class="h-info">
                <a href="${pageContext.request.contextPath}/pages/personal.jsp?phone=${user.phone}&password=${user.password}"><img src="${user.headPic}" alt="" class="tou"></a>
                <div class="basic">
                    <p>
                        <span class="span1">${user.userName}</span>
                        <span class="span2">
                            <c:if test="${user.userRole == 1}">普通用户</c:if>
                            <c:if test="${user.userRole == 2}">大会员</c:if>
                        </span>
                    </p>
                    <input type="text" placeholder="编辑个性签名" value="${user.signature}">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 菜单栏 -->
<div class="wrap">
    <div class="navs">
        <ul class="ul2" id="navs">
            <li class="active"><a href=""><img src="../img/a1.JPG" alt="">主页</a></li>
            <li><a href="#"><img src="../img/a2.JPG" alt="">动态</a></li>
            <li><a href="#"><img src="../img/a3.JPG" alt="">投稿 ${user.contribution}</a></li>
            <li><a href="#"><img src="../img/a4.JPG" alt="">视频列表 0</a></li>
            <li><a href="#"><img src="../img/a5.JPG" alt="">收藏 3</a></li>
            <li><a href="#"><img src="../img/a6.JPG" alt="">订阅</a></li>
        </ul>
        <ul class="ul3">
            <li>
                <a href="">
                    <p>关注数</p>
                    <p>${user.concern}</p>
                </a>
            </li>
            <li>
                <a href="">
                    <p>粉丝数</p>
                    <p>${user.fans}</p>
                </a>
            </li>
            <li>
                <a href="">
                    <p>获赞数</p>
                    <p>15</p>
                </a>
            </li>
            <li>
                <a href="">
                    <p>播放数</p>
                    <p>15</p>
                </a>
            </li>
            <li>
                <a href="">
                    <p>阅读数</p>
                    <p>15</p>
                </a>
            </li>
        </ul>
    </div>
    <div class="main">
        <div class="leftbox">
            <h2 class="t1">我的粉丝会看到</h2>
            <div>
                <img src="../img/6.JPG" alt="" width="700">
            </div>
            <br><br>
            <h3 class="t2">
                <a href="#">我的视频</a>
                <div class="text">
                    <span>还没有上传过视频哦</span>
                    <a href="">立即上传</a>
                </div>
            </h3>
            <hr>
            <h3 class="t2">
                <a href="#">我的专栏</a>
            </h3>
            <hr>
            <h3 class="t2">
                <a href="#">我的视频列表</a>
            </h3>
            <div class="text1">
                投稿视频可以分类展示了
                <a href="" class="btn">创建视频列表</a>
            </div>
            <hr>
            <h3 class="t2">
                <a href="#">我的收藏夹</a>
            </h3>
            <ul class="ul4">
                <li>
                    <a href="">
                        <img src="../img/7.JPG" alt="">
                        <p>默认收藏夹</p>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="../img/8.JPG" alt="">
                        <p>物理</p>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="../img/9.JPG" alt="">
                        <p>信息技术</p>
                    </a>
                </li>
            </ul>
            <br>
            <hr>
            <h3 class="t2">
                <a href="#">订阅番剧</a>
            </h3>
            <div class="text1">
                空间主人还没有订阅过的番剧

            </div>
            <br>
            <hr>
            <h3 class="t2">
                <a href="#">订阅标签</a>
            </h3>
            <div class="text1">
                空间主人还没有关注过标签

            </div>
            <br>
            <hr>
            <h3 class="t2">
                <a href="#">最近投币的视频</a>
            </h3>
            <div class="text1">
                空间主人最近一个月没有投过硬币
            </div>
            <br>
            <hr><br><br>
            <ul class="ul5">
                <li>
                    <a href="">
                        <img src="../img/10.JPG" alt="" class="img1">
                        <p> 小学生的作业，老师家长看了能气疯！！</p>
                        <p><img src="../img/a8.JPG"  alt="" class="img2">174.8万</p>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="../img/11.JPG" alt="" class="img1">
                        <p>【地狱模式】暴汗KPOP尊巴魔鬼燃脂舞一小时挑战</p>
                        <p><img src="../img/a8.JPG"  alt="" class="img2">174.8万</p>
                    </a>
                </li>

            </ul>
        </div>
        <div class="rightbox">
            <div class="author">
                <a href="${pageContext.request.contextPath}/pages/authentication.jsp" target="_blank">
                    <div class="text6">
                        <p class="p1">点此申请 bilibili 认证</p>
                        <p class="p2">获得 bilibili 认证，享受多重认证福利！</p>
                    </div>
                </a>
            </div>
            <div class="zhongxin">
                <img src="../img/12.JPG" alt="">
                <div class="box1">
                    <a href="">
                        <img src="../img/a9.JPG" width="18" height="18" alt="">视频投稿
                    </a>
                    <a href="">
                        <img src="../img/a10.JPG" width="18" height="18" alt="">内容管理
                    </a>
                </div>
            </div>
            <div class="gonggao">
                <h3 >公告</h3>
                <textarea rows="4" type="textarea" placeholder="编辑我的空间公告" maxlength="150" >${user.notice}</textarea>
            </div>
            <div class="ziliao">
                <h3 >个人资料</h3>
                <p>
                    UID ${user.userId} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    生日 ${user.birthday}
                    <%--生日 <input class="birth" type="text" placeholder="01-01"> <span class="birth_list">﹀</span>--%>
                </p>
                <%--<div class="date_list">
                    <table>
                        <tr>
                            <td><span>< </span><span class="month">11</span>月 <span> ></span></td>
                        </tr>
                        <tr>
                            <td>日</td>
                            <td>一</td>
                            <td>二</td>
                            <td>三</td>
                            <td>四</td>
                            <td>五</td>
                            <td>六</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="date">1</td>
                            <td class="date">2</td>
                            <td class="date">3</td>
                            <td class="date">4</td>
                            <td class="date">5</td>
                            <td class="date">6</td>
                        </tr>
                        <tr>
                            <td class="date">7</td>
                            <td class="date">8</td>
                            <td class="date">9</td>
                            <td class="date">10</td>
                            <td class="date">11</td>
                            <td class="date">12</td>
                            <td class="date">13</td>
                        </tr>
                        <tr>
                            <td class="date">14</td>
                            <td class="date">15</td>
                            <td class="date">16</td>
                            <td class="date">17</td>
                            <td class="date">18</td>
                            <td class="date">19</td>
                            <td class="date">20</td>
                        </tr>
                        <tr>
                            <td class="date">21</td>
                            <td class="date">22</td>
                            <td class="date">23</td>
                            <td class="date">24</td>
                            <td class="date">25</td>
                            <td class="date">26</td>
                            <td class="date">27</td>
                        </tr>
                        <tr>
                            <td class="date">28</td>
                            <td class="date">29</td>
                            <td class="date">30</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
                </div>--%>
            </div>
        </div>
    </div>
</div>
</body>
<script src="../js/jquery-3.6.0.js"></script>
<script>
    $(function () {
        /*更改头像*/
        $("#header").attr("src", "${user.headPic}");

        var count = 0;
        $(".birth_list").click(function () {
            count ++;
            if ((count % 2) === 1) {
                $(".date_list").slideDown("fast");
            }else {
                $(".date_list").slideUp("fast");
            }
        })

        /*生日*/
        var month = $(".month").html();
        $(".date").click(function () {
            var indexTr = $(this).parent().index();
            var indexTd = $(this).index();
            var day = $("tr").eq(indexTr).find("td").eq(indexTd).html();

            if (day < 10) {
                $(".birth").val(month + "-0" + day);
            }else {
                $(".birth").val(month + "-" + day);
            }
        });

        $(".birth").blur(function () {
            var reg = /(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/;
            var e = new RegExp(reg);
            if (e.test($(this).val())) {
                // alert("生日设置成功！");
            }else {
                alert("日期格式错误！");
                $(this).val("");
            }
        });

        /*主站 更多列表*/
        $(".hidden").hover(function () {
            $(".hidden_list").slideDown("fast");
        },function () {
            $(".hidden_list").slideUp("fast");
        });
    });

    window.onload = function() {
        var ul = document.getElementById('navs');
        var li = ul.getElementsByTagName('li');
        for(var i = 0; i < li.length; i++) {
            li[i].onclick = function() {
                for(var k = 0; k < li.length; k++) {
                    li[k].className = '';
                }
                this.className = 'active';
            }
        }
    }
</script>
</html>
