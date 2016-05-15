<%--
  Created by IntelliJ IDEA.
  User: shuaigehong
  Date: 2016/5/12
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加订单信息</title>
</head>
<style type="text/css">
    .warm {
        background: #f0efee;
        width: 70%;
        height: 128px;
        border-right: 5px;
        line-height: 100px;
    }

    img {
        vertical-align: sub;
    }

    span {
        font-size: 18px;
        font-weight: normal;
        font-family: "Microsoft YaHei";
        color: gray;
    }

    .warmDiv {
        float: left;
        width: 182px;
        height: 79%;
        margin-left: 50px;
        line-height: 50px;
        margin-top: 30px;
    }

    .inputAll {
        width: 270px;
        margin-left: auto;
        margin-right: auto;
        height: 40px;
        border-radius: 5px;
        border: 1px solid rgba(171, 162, 162, 0.87);
    }

    .inputP {
        float: left;
        width: 40px;
        height: 40px;
        line-height: 40px;
        text-align: center;
        overflow: hidden;
        border-right: 1px solid #B5AEAE;
    }

    .inputText {
        height: 40px;
        width: 229px;
        border: 0px;
        margin-top: 0px;
        border-radius: 5px;
        padding-left: 10px;
        padding-right: 10px;
        font-size: 14px;
        color: gray;
        font-family: "Microsoft YaHei";
    }
    .bookHead{
        width: 80%;
        height: 120px;
        text-align: center;
        position: relative;
        line-height: 81px;
        margin-left: 10%;
        padding-top: 40px;
        border-bottom: 1px solid rgba(204, 204, 204, 0.54);
    }
</style>
<link type="text/css" rel="stylesheet" href="../../../css/button.css">
<link rel='stylesheet' href='../../../css/bootstrap.css'>
<link rel="stylesheet" type="text/css" href="../../../css/makeOrder/zzsc-demo.css">
<link rel="stylesheet" href="../../../css/makeOrder/style.css">
<link type="text/css" href="/css/nav/navCss/font-awesome.css" rel="stylesheet">
<body>
<jsp:include page="../../../common/top.jsp"/>
<div class="bookHead">
    <span style="font-size: 24px;font-weight: normal;font-family: Microsoft YaHei;color: rgb(138, 138, 140);">
        我的预定
    </span>
</div>
<%
    if (null != session.getAttribute("user")) {
%>
<div class="warm"
     style="background: rgba(119, 116, 116, 0.25);width: 60%;height: 150px;border-right: 5px;line-height: 100px;position: relative;top: 100px;left: 20%;border-radius: 17px;">
    <div style="width: 145px;height: 100%;float:left;">
        <img src="../../../img/common/warm.png" style="width: 80px;height: 80px;margin-top: 35px;margin-left: 30px;">
    </div>
    <div style="float: left;width: 2px;background: white;height: 100%;margin-left: 1px;"></div>
    <div class="warmDiv">
        <span>用户未登录！</span><br>
        <a href="/login/openPage.htm" class="button button-3d button-action button-pill" target="main">Go login!</a>
    </div>
    <div class="warmDiv">
        <span>没有账号？</span><br>
        <a href="/register/openPage.htm" class="button button-3d button-action button-pill" target="main">Go
            register!</a>
    </div>

</div>
<%
} else {
%>
<section class="zzsc-container">
    <div class="container">
        <div class="dataForm">

            <div class="panel-group wrap" id="bs-collapse">

                <div class="panel">
                    <div class="panel-heading">
                        <div class="inputAll">
                            <div class="inputP"><span class="icon icon-user" style="line-height: 40px;"> </span></div>
                            <input class="inputText" type="text" placeholder="用户昵称 / 电子邮件">
                        </div>
                    </div>
                </div>
                <!-- end of panel -->

                <div class="panel">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#" href="#two">
                                Collapse item #2
                            </a>
                        </h4>
                    </div>
                    <div id="two" class="panel-collapse collapse">
                        <div class="panel-body">
                            Where is the harp on the harpstring, and the red fire glowing? Where is the spring and the
                            harvest and the tall corn growing?
                        </div>

                    </div>
                </div>
                <!-- end of panel -->

                <div class="panel">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#" href="#three">
                                Collapse item #3
                            </a>
                        </h4>
                    </div>
                    <div id="three" class="panel-collapse collapse">
                        <div class="panel-body">
                            The days have gone down in the West behind the hills into shadow. Who shall gather the smoke
                            of the deadwood burning, Or behold the flowing years from the Sea returning?
                        </div>
                    </div>
                </div>
                <!-- end of panel -->

                <div class="panel">
                    <div class="panel-heading">
                        aASDFA<input type="text">
                    </div>
                </div>
                <!-- end of panel -->

            </div>


        </div>
        <!-- end of wrap -->

    </div>
    <!-- end of container -->
</section>

<%
    }
%>
<script src="../../../js/jquery-2.1.1.min.js " type="text/javascript"></script>
<script src='../../../js/bootstrap.js'></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('.collapse.in').prev('.panel-heading').addClass('active');
        $('#accordion, #bs-collapse')
                .on('show.bs.collapse', function(a) {
                    $(a.target).prev('.panel-heading').addClass('active');
                })
                .on('hide.bs.collapse', function(a) {
                    $(a.target).prev('.panel-heading').removeClass('active');
                });
    });
</script>
</body>
</html>
