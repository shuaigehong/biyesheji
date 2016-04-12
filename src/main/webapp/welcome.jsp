<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ChinaZ</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/nav/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="css/nav/css/style.css" media="screen" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/welcomePage/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/welcomePage/demo.css" />

    <!--必要样式-->
    <link rel="stylesheet" type="text/css" href="css/welcomePage/component.css" />

    <script src="js/welcomePage/modernizr.custom.js"></script>

</head>
<body style="background: #FFFFFF;border: 0px;padding: 0px;margin: 0px">
<div class="header_fixed" id="top" style="z-index:200;position: fixed;width: 100%;height: 55px;background: rgb(7, 245, 168);top: 0px;">
    <ul id="breadcrumb">
        <li><a href="#" ><span class="icon icon-home" style="line-height: 30px;text-align: center"> </span></a></li>
        <li><a href="#"><span class="icon icon-gear"> </span>设置</a></li>
        <li><a href="#"><span class="icon icon-user"> </span>个人主页</a></li>
        <li><a href="#"><span class="icon icon-heart"> </span>喜欢</a></li>
    </ul>
</div>
<div class="slideshow" id="slideshow">
    <ol class="slides">
        <li class="current">
            <div class="description">
                <h2>Tilted Content Slideshow</h2>
                <p>This slider, as seen on the landing page of the <a href="http://sc.chinaz.com/jiaoben/">FWA</a>, plays with 3D perspective and performs some interesting animations on the right-hand side images.</p>
            </div>
            <div class="tiltview col">
                <a href=""><img src="img/welcomePage/1_screen.jpg"/></a>
                <!-- <a href="https://sc.chinaz.com/jiaoben/"><img src="img/2_screen.jpg"/></a> -->
            </div>
        </li>
        <li>
            <div class="description">
                <h2>CSS Animations</h2>
                <p>We are using 12 different animations for showing and hiding the items of a slide. The animations are defined by randomly adding data-attributes called <code>data-effect-in</code> and <code>data-effect-out</code> for every slide. </p>
            </div>
            <div class="tiltview row">
                <a href=""><img src="img/welcomePage/3_mobile.jpg"/></a>
                <a href=""><img src="img/welcomePage/4_mobile.jpg"/></a>
            </div>
        </li>
        <li>
            <div class="description">
                <h2>Tilted Items</h2>
                <p>The perspective view is achieved by adding a perspective value to the slide list item and tilting a division that contains the two screenshots.</p>
            </div>
            <div class="tiltview col">
                <a href=""><img src="img/welcomePage/5_screen.jpg"/></a>
                <a href=""><img src="img/welcomePage/6_screen.jpg"/></a>
            </div>
        </li>
        <li>
            <div class="description">
                <h2>Column or Row</h2>
                <p>The items in the tilted container are either laid out in a column or in a row. For some directions we need to adjust the animation delays for the items, since we don't want the items to overlap each other when they move in or out.</p>
            </div>
            <div class="tiltview row">
                <a href=""><img src="img/welcomePage/1_mobile.jpg"/></a>
                <a href=""><img src="img/welcomePage/2_mobile.jpg"/></a>
            </div>
        </li>
        <li>
            <div class="description">
                <h2>Responsiveness</h2>
                <p>For smaller screens, the items on the right hand side will become less opaque and serve as decoration only. The focus will be on the description which will occupy all the width.</p>
            </div>
            <div class="tiltview col">
                <a href=""><img src="img/welcomePage/3_screen.jpg"/></a>
                <!-- <a href="http://sc.chinaz.com/jiaoben/"><img src="img/4_screen.jpg"/></a> -->
            </div>
        </li>
        <li>
            <div class="description">
                <h2>Navigation</h2>
                <p>For the "line" navigation we use a little trick to make the clickable area a bit bigger: we add a thick white border to the top and bottom of the span. Since the border is part of the element, it will be part of the clickable zone.</p>
            </div>
            <div class="tiltview row">
                <a href=""><img src="img/welcomePage/5_mobile.jpg"/></a>
                <!-- <a href="http://sc.chinaz.com/jiaoben/"><img src="img/6_mobile.jpg"/></a> -->
            </div>
        </li>
    </ol>
</div>


<div style="height: 100px;width: 100%;background: #df6659;padding-left: 50px;padding-right: 50px;">

twerwer
</div>







<script type="text/javascript" src="js/welcomePage/classie.js"></script>
<script type="text/javascript" src="js/welcomePage/tiltSlider.js"></script>
<script type="text/javascript">
    new TiltSlider(document.getElementById('slideshow'));
</script>
</body>
</html>