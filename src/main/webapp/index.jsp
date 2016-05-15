<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>ChinaZ</title>
    <link rel="stylesheet" type="text/css" href="css/top/default.css">
    <link rel="stylesheet" type="text/css" href="css/top/search-form.css">
    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/userHead/reset.css"> <!-- CSS reset -->
    <link rel="stylesheet" href="css/userHead/style.css"> <!-- Resource style -->
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
<script src="js/userHead/modernizr.js"></script>
<body style="border: 0;margin: 0;padding: 0" >
<div class="navdiv" style="height: 100%;width: 95px;float: left;position: fixed;z-index: 4">
<iframe style="height: 100%;width:100%;background: #FFFFFF" src="nav.jsp" frameborder="0"></iframe>
</div>
<%--<div class="topdiv" style="height: 50px;--%>
    <%--width: 100%;--%>
    <%--position: fixed;--%>
    <%--z-index: 3;">--%>
    <%--<form onsubmit="submitFn(this, event);">--%>
        <%--<div class="search-wrapper">--%>
            <%--<div class="input-holder">--%>
                <%--<input type="text" class="search-input" placeholder="Type to search" />--%>
                <%--<button class="search-icon" onclick="searchToggle(this, event);"><span></span></button>--%>
            <%--</div>--%>
            <%--<span class="close" onclick="searchToggle(this, event);"></span>--%>
        <%--</div>--%>
    <%--</form>--%>
<%--</div>--%>



<%--<header>--%>
    <%--<nav class="cd-stretchy-nav">--%>
        <%--<a href="#0">--%>
            <%--<img class="cd-nav-trigger" src="img/userHead/logo.jpg" >--%>
        <%--</a>--%>

        <%--<ul>--%>
            <%--<li><a href="#0"><span>个人主页</span></a></li>--%>
            <%--<li><a href="#0"><span>My Idea</span></a></li>--%>
            <%--<li><a href="#0"><span>设置</span></a></li>--%>
            <%--<li><a href="#0"><span>我 喜 欢</span></a></li>--%>
            <%--<li><a href="#0"><span>相关</span></a></li>--%>
        <%--</ul>--%>

        <%--<span aria-hidden="true" class="stretchy-nav-bg"></span>--%>
    <%--</nav>--%>
<%--</header>--%>






<div class="maindiv" id="maindiv" style="    height: 100%;
    width: auto;
    /*top: 50px;*/
    margin-left: 95px;
    position: relative;">
    <iframe style="width: 100%;height: 100%;background: #FFFFFF" frameborder="0" scrolling="yes" id="main" name="main" src="welcome.jsp">
    </iframe>
</div>

<%--<script src="js/top/jquery-1.11.0.min.js" type="text/javascript"></script>--%>
<%--<script type="text/javascript">--%>
    <%--function searchToggle(obj, evt){--%>
        <%--var container = $(obj).closest('.search-wrapper');--%>

        <%--if(!container.hasClass('active')){--%>
            <%--container.addClass('active');--%>
            <%--evt.preventDefault();--%>
        <%--}--%>
        <%--else if(container.hasClass('active') && $(obj).closest('.input-holder').length == 0){--%>
            <%--container.removeClass('active');--%>
            <%--// clear input--%>
            <%--container.find('.search-input').val('');--%>
            <%--// clear and hide result container when we press close--%>
            <%--container.find('.result-container').fadeOut(100, function(){$(this).empty();});--%>
        <%--}--%>
    <%--}--%>

    <%--function submitFn(obj, evt){--%>
        <%--value = $(obj).find('.search-input').val().trim();--%>

        <%--_html = "Yup yup! Your search text sounds like this: ";--%>
        <%--if(!value.length){--%>
            <%--_html = "Yup yup! Add some text friend :D";--%>
        <%--}--%>
        <%--else{--%>
            <%--_html += "<b>" + value + "</b>";--%>
        <%--}--%>

        <%--$(obj).find('.result-container').html('<span>' + _html + '</span>');--%>
        <%--$(obj).find('.result-container').fadeIn(100);--%>

        <%--evt.preventDefault();--%>
    <%--}--%>
<%--</script>--%>
<script src="js/userHead/jquery-2.1.4.js"></script>
<script src="js/userHead/main.js"></script> <!-- Resource jQuery -->
</body>
</html>
