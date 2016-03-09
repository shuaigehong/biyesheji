<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>ChinaZ</title>
</head>
<body style="border: 0px;margin: 0px;padding: 0px">
<div class="navdiv" style="height: 100%;width: 100px;float: left;position: fixed;z-index: 4">
<iframe style="height: 100%;width:100%;" src="nav.jsp" frameborder="0"></iframe>
</div>
<div class="topdiv" style="    height: 50px;
    width: 100%;
    background: #8E27C1;
    position: fixed;
    z-index: 3;"></div>
<div class="maindiv" style="    height: 1900px;
    width: auto;
    top: 50px;
    margin-left: 100px;
    margin-right: 100px;
    position: relative;">
    <iframe style="width: 100%;height: 100%;background: beige" frameborder="0" scrolling="yes" name="main">
    </iframe>
</div>
<%--<div class="yuandiv" style=" position: fixed;--%>
    <%--left: 98px;--%>
    <%--top: 10px;--%>
    <%--height: 63px;--%>
    <%--width: 63px;--%>
    <%--z-index: 5;">--%>
    <%--<img src="img/logoT.png" alt="" style="width: 65px;height: 65px;"/>--%>
</div>
</body>
</html>
