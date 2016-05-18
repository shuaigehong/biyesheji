<%--
  Created by IntelliJ IDEA.
  User: shuaigehong
  Date: 2016/5/15
  Time: 15:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link type="text/css" href="/css/tip/tipso.css" rel="stylesheet">
<link type="text/css" href="/css/tip/tipso.min.css" rel="stylesheet">
<body>
<div class="dowebok">
    <h2>1、默认</h2>
    <div class="inner"><span id="tip1" data-tipso="dowebok.com"><span></span>Tipso</span></div>
</div>

<div class="dowebok">
    <h2>2、左边显示</h2>
    <div class="inner"><span id="tip2" data-tipso="dowebok.com">Tipso</span></div>
</div>

<div class="dowebok">
    <h2>3、背景颜色</h2>
    <div class="inner"><span id="tip3" data-tipso="dowebok.com">Tipso</span></div>
</div>

<div class="dowebok">
    <h2>4、使用title属性</h2>
    <span id="tip4" title="内容来自 title 属性">Tipso</span>
</div>
<script type="text/javascript" src="/js/tip/tipso.js"></script>
<script type="text/javascript" src="/js/tip/tipso.min.js"></script>
<script type="text/javascript" src="/js/tip/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
    $(function() {
        $('#tip4').tipso();
    });
</script>
</body>
</html>
