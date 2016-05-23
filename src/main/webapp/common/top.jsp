<%@ page import="com.bishe.domain.UserInfoDo" %>
<%@ page import="com.bishe.utils.userUtils.UserInfoUtils" %><%--
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
        a{
            text-decoration: none;
        }
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
        .userNav{
            width: 100%;
            height: 65px;
            position: fixed;
            background: #FFFFFF;
            top: 40px;
            right: 0px;
            z-index: 1900;
            border-width: 0px 0px 1px 0px;
            border-style: solid;
            border-color: #FD5953;
            display: none;
        }
        .settingItem{
            width: 20%;
            text-align: center;
            height: 100%;
            min-width: 170px;
            float: left;
            font: 12px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
        }
        .settingIcon{
            color: #FD5953;
            background: #FFFFFF;
            width: 100%;
            height: 64px;
            line-height: 100%;
        }
        .settingIcon:hover{
            color: #FFFFFF;
            background: #FD5953;
        }
    </style>
</head>
<link type="text/css" href="/css/nav/navCss/font-awesome.css" rel="stylesheet">
<body>
<%--网站logo--%>
<div id="topNav" style="background: rgb(255, 255, 255);z-index:2000;position: fixed;width: 100%;height: 40px;border-bottom: 1px solid #FD5953;top: 0px;">
<div style="float: left;width: auto;height: 100%;padding-left: 10px">
    <img src="../img/top/logo.png" alt="" style="height: 38px;width: 110px;">
</div>
    <%
        Object userObject = session.getAttribute("user");
        if(null == userObject){
    %>
    <%--登录注册选项--%>
    <div style="float: right;width: 100px;height: 100%;background: white;margin-right: 20px;">
        <div style="float: left;height: 100%;line-height: 45px;">
            <a class="topA" href="${pageContext.request.contextPath}/user/openLoginPage.htm" style="color: grey" target="main"><img src="../img/top/login.png" alt=""
                                                                                                                                    style="height: 16px;width: 16px;margin-top: 13px;vertical-align: sub;">登录</a>
        </div>
        <div style="float: right;height: 100%;line-height: 45px;">
            <a class="topA" href="${pageContext.request.contextPath}/user/openRegisterPage.htm" style="color: grey" target="main"><img src="../img/top/register.png" alt=""
                                                                                                                                       style="height: 17px;width: 17px;vertical-align: sub;">注册</a>
        </div>
    </div>
    <%
        }else{
            UserInfoDo user = (UserInfoDo)userObject;
    %>
    <div style="float: right;width: 135px;height: 100%;background: white;cursor: pointer;font: 12px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;font-size: 12px" onclick="userNav()">
        <img src="../img/userHead/logo.jpg" style="width: 28px;height: 28px;border-radius: 20px;vertical-align: middle;">
        <userName style="margin-left: 5px"><%=user.getUserName()%></userName>
        <span id="iconDown" class="icon icon-angle-down" style="line-height: 40px;"></span>
    </div>
    <%
        }
    %>
    </div>

    <div id="userNav" class="userNav">
        <div class="settingItem">
            <a href="#">
                <div class="settingIcon">
                    <div style="width: 100%;top: 15px;
    position: relative;">
                        <span class="icon icon-cogs" style="font-size: 24px"></span>
                        <div>个人设置</div>
                    </div>
                </div>
            </a>
        </div>
        <div class="settingItem">
            <a href="#">
                <div class="settingIcon">
                    <div style="width: 100%;top: 15px;
    position: relative;">
                    <span class="icon icon-user" style="font-size: 24px"></span>
                    <div>个人信息</div>
                    </div>
                </div>
            </a>
        </div>
        <div class="settingItem">
            <%if (null != UserInfoUtils.getUserInfo(request)){
                %>
            <a href="${pageContext.request.contextPath}/order/getUserOrders.htm?userId=<%=UserInfoUtils.getUserInfo(request).getId()%>" target="main">
            <%
            }else{
                %>
                <a href="#">
                <%
            }
            %>
                <div class="settingIcon">
                    <div style="width: 100%;top: 15px;
    position: relative;">
                    <span class="icon icon-shopping-cart" style="font-size: 24px"></span>
                    <div>我的预定车</div>
                    </div>
                </div>
            </a>
        </div>
        <div class="settingItem">
            <a href="#">
                <div class="settingIcon">
                    <div style="width: 100%;top: 15px;
    position: relative;">
                    <span class="icon icon-eye-open" style="font-size: 24px"></span>
                    <div>我的关注</div>
                    </div>
                </div>
            </a>
        </div>
        <div class="settingItem">
            <a href="${pageContext.request.contextPath}/user/loginOut.htm" target="main">
                <div class="settingIcon">
                    <div style="width: 100%;top: 15px;
    position: relative;">
                    <span class="icon icon-signout" style="font-size: 24px"></span>
                    <div>退出登录</div>
                    </div>
                </div>
            </a>
        </div>
    </div>
<script type="text/javascript">
    function userNav(){
        var userNav = document.getElementById("userNav");
        var topNav = document.getElementById("topNav");
        var icon = document.getElementById("iconDown");
        if(userNav.style.display=="block"){
            userNav.style.display = "none";
            topNav.style.borderColor="#FD5953";
            icon.className = "icon icon-angle-down";
        }else {
            userNav.style.display = "block";
            topNav.style.borderColor="#DDDDDD";
            icon.className = "icon icon-angle-up";
        }
    }
</script>
</body>
</html>
