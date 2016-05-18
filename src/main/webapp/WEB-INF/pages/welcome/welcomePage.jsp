<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>ChinaZ</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../../css/nav/navCss/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="css/nav/css/style.css" media="screen" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="../../../css/welcomePage/app.css"/>
    <link rel="stylesheet" type="text/css" href="../../../css/welcomePage/fonts.css"/>
    <link rel="stylesheet" type="text/css" href="../../../css/welcomePage/index.css"/>
    <!--必要样式-->
    <link rel="stylesheet" type="text/css" href="css/welcomePage/component.css"/>

    <script src="../../../js/welcomePage/modernizr.custom.js"></script>
    <jsp:include page="../../../common/common.css"/>
    <style type="text/css">
        .headTitle {
            font-size: 17px;
            font-weight: bold;
            line-height: 48px;
            float: left;
            font-family: Microsoft YaHei;
            color: grey;
        }

        .more {
            float: right;
            height: 24px;
            line-height: 23px;
            margin-top: 17px;
            width: 63px;
            border-radius: 12px;
            border: 1px solid gray;
            font-family: Microsoft YaHei;
            font-size: 12px;
            color: #8d9a97;
            cursor: pointer;
            text-align: center;
        }
        .modelHead{
            height: 50px;
            width:100%;
            border-bottom: 1px solid #DDDDDD;
            margin-top: 70px;
        }
        .model{
            height: auto;
            width: 100%;
            padding-left: 50px;
            padding-right: 50px;
        }
    </style>
</head>
<body style="background: #FFFFFF;border: 0px;padding: 0px;margin: 0px">
<%--头部--%>
 <jsp:include page="../../../common/top.jsp"/>

<%--活动介绍板块--%>
<div style="top: 22px;position:relative;width: 100%;">
    <jsp:include page="activePage.jsp"/>
</div>


<%--精品导航模块--%>
<div class="model">
    <div class="modelHead">
        <div class="headTitle">
            一周精选
        </div>
        <div class="more">
            更 多
        </div>
    </div>
    <%--图片展示区--%>
    <div class="wrap" id="wrap">
        <!-- Õâ¸öÊÇµÚ¶þÖÖ·ç¸ñ Satrt-->
        <main>
            <ul class="ul items">
                <%
                    for (int i = 0; i < 9; i++) {
                        %>
                <li>
                    <figure class="effect-jazz">
                        <img src="../../../img/welcomePage/modelImg/480_soft_days.jpg" alt="ÔÆÉÏµÄÈÕ×Ó|soft days">
                        <figcaption>
                            <h2>
                                爱美的心
                                <br>
                            <span>
                                soft days
                            </span>
                            </h2>
                            <p>
                                go visit..
                            </p>
                            <a href="${pageContext.request.contextPath}/index/itemInfo.htm" target="main">
                                人人有颗爱美的心
                            </a>
                        </figcaption>
                    </figure>
                </li>
                <%
                    }
                %>
            </ul>
        </main>
    </div>

    <div class="modelHead">
        <div class="headTitle">
            奇葩创意
        </div>
        <div class="more">
            更 多
        </div>
    </div>
    <div class="wrap" id="wrap">
        <!-- Õâ¸öÊÇµÚ¶þÖÖ·ç¸ñ Satrt-->
        <main>
            <ul class="ul items">
                <%
                    for (int i = 0; i < 9; i++) {
                %>
                <li>
                    <figure class="effect-jazz">
                        <img src="../../../img/welcomePage/modelImg/480_0107.jpg" alt="ÔÆÉÏµÄÈÕ×Ó|soft days">
                        <figcaption>
                            <h2>
                                爱美的心
                                <br>
                            <span>
                                soft days
                            </span>
                            </h2>
                            <p>
                               visit...
                            </p>
                            <a href="${pageContext.request.contextPath}/index/itemInfo.htm" target="main">
                            </a>
                        </figcaption>
                    </figure>
                </li>
                <%
                    }
                %>
            </ul>
        </main>
    </div>
</div>
<div style="height: 80px;width:100%;border-top: 1px solid #FD5953;margin-top: 70px;">
    <jsp:include page="../../../common/bottom.jsp"/>
</div>




<%--引入的js文件--%>
<script type="text/javascript" src="../../../js/welcomePage/classie.js"></script>
<%--<script type="text/javascript" src="../../../js/welcomePage/tiltSlider.js"></script>--%>
<script type="text/javascript">
    new TiltSlider(document.getElementById('slideshow'));
</script>
</body>
</html>