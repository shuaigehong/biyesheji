<%--
  Created by IntelliJ IDEA.
  User: shuaigehong
  Date: 2016/5/23
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
    <link href="../../../css/admin/style.css" rel='stylesheet' type='text/css' />
</head>
<script type="application/x-javascript"> a
ddEventListener("load", function () {
    setTimeout(hideURLbar, 0);
}, false);
function hideURLbar() {
    window.scrollTo(0, 1);
} </script>
<body>
<div class="main">
    <div class="login-form">
        <h1>admin Login</h1>

        <div class="head">
            <img src="../../../img/admin/user.png" alt=""/>
        </div>
        <form action="${pageContext.request.contextPath}/admin/login.htm" method="post">
            <input type="text" class="text" name="name" placeholder="管理员昵称">
            <input type="password" name="pwd" placeholder="密码">
            <div class="submit">
                <input type="submit" value="LOGIN">
            </div>
        </form>
    </div>
</div>
</body>
</html>
