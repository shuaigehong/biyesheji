<%--
  Created by IntelliJ IDEA.
  User: shuaigehong
  Date: 2016/5/12
  Time: 13:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        .topA{
            text-decoration: none;
            font-family: "Microsoft YaHei";
            font-size: 14px;
            color: grey;
            font-weight: initial;
        }
        body{
            margin: 0;
            padding: 0;
            border: 0;
        }
    </style>
</head>
<body>
<%--网站logo--%>
<div style="background: rgb(255, 255, 255);z-index:2000;position: fixed;width: 100%;height: 40px;border-bottom: 1px solid #FD5953;top: 0px;">
<div style="float: left;width: auto;height: 100%;padding-left: 10px">
    <img src="../img/top/logo.png" alt="" style="height: 38px;width: 110px;">
</div>
<%--登录注册选项--%>
<div style="float: right;width: 100px;height: 100%;background: white;margin-right: 20px;">
    <div style="float: left;height: 100%;line-height: 45px;">
        <a class="topA" href="/login/openPage.htm" style="color: grey" target="main"><img src="../img/top/login.png" alt=""
                                             style="height: 16px;width: 16px;margin-top: 13px;vertical-align: sub;">登录</a>
    </div>
    <div style="float: right;height: 100%;line-height: 45px;">
        <a class="topA" href="/register/openPage.htm" style="color: grey" target="main"><img src="../img/top/register.png" alt=""
                                             style="height: 17px;width: 17px;vertical-align: sub;">注册</a>
    </div>
</div>
    </div>
</body>
</html>
