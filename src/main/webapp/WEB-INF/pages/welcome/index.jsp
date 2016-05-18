<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>ChinaZ</title>
    <link rel="stylesheet" type="text/css" href="../../../css/top/default.css">
    <link rel="stylesheet" type="text/css" href="../../../css/top/search-form.css">
    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="../../../css/userHead/reset.css"> <!-- CSS reset -->
    <link rel="stylesheet" href="../../../css/userHead/style.css"> <!-- Resource style -->
    <style type="text/css">
        html,body{
            margin: 0px;
            padding: 0px;
            border: 0px;
            height: 100%;
            width: 100%;
        }
    </style>
</head>
<script src="../../../js/userHead/modernizr.js"></script>
<body style="border: 0;margin: 0;padding: 0" >
<div class="navdiv" style="height: 100%;width: 95px;float: left;position: fixed;z-index: 4">
<iframe style="height: 100%;width:100%;background: #FFFFFF" src="${pageContext.request.contextPath}/welcome/nav.htm" frameborder="0"></iframe>
</div>
<div class="maindiv" id="maindiv" style="    height: 100%;
    width: auto;
    margin-left: 95px;
    position: relative;">
    <iframe style="width: 100%;height: 100%;background: #FFFFFF" frameborder="0" scrolling="yes"
            id="main" name="main" src="${pageContext.request.contextPath}/welcome/welcomepage.htm">
    </iframe>
</div>
<script src="../../../js/userHead/jquery-2.1.4.js"></script>
<script src="../../../js/userHead/main.js"></script> <!-- Resource jQuery -->
</body>
</html>
