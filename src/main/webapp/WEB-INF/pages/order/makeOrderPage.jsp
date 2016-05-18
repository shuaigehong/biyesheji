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
        color: gray;
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
    .subBut{
        width: 100%;
        background: #FD5953;
        color: white;
        font-size: 16px;
        font-family: Microsoft YaHei;
        font-weight: 500;
        border: 2px solid #FD5953;
        height: 100%;
        border-radius: 5px;
        cursor: pointer;
    }
    .subBut:hover{
        background: white;
        color: #FD5953;
    }
</style>
<link type="text/css" rel="stylesheet" href="../../../css/button.css">
<link rel='stylesheet' href='../../../css/bootstrap.css'>
<link rel="stylesheet" type="text/css" href="../../../css/makeOrder/zzsc-demo.css">
<link rel="stylesheet" href="../../../css/makeOrder/style.css">
<link type="text/css" href="/css/nav/navCss/font-awesome.css" rel="stylesheet">
<%--<link type="text/css" href="../../../css/tip/tipso.css" rel="stylesheet">--%>
<%--<link type="text/css" href="../../../css/tip/tipso.min.css" rel="stylesheet">--%>
<body>
<jsp:include page="../../../common/top.jsp"/>
<%
    String flag = (String)request.getAttribute("flag");
    if (null != flag && flag.equals("error")){
%>
<div id="info" onclick="infoControl()" style="display: block;width: 100%;
            position: absolute;
            bottom: 0px;
            height: 40px;
            background: rgba(216, 193, 0, 0.541176);
            line-height: 40px;
            font-family: Microsoft YaHei;
            color: red;
            text-align: center;">
    <div>添加订单信息出错！</div>
</div>
<%}
    if (null != flag && flag.equals("yes")){
%>
    <div id="info" onclick="infoControl()" style="display: block;width: 100%;
                position: absolute;
                bottom: 0px;
                height: 40px;
                background: rgba(216, 193, 0, 0.541176);
                line-height: 40px;
                font-family: Microsoft YaHei;
                color: red;
                text-align: center;">
        <div style="width: 50%;
            float: left;
            text-align: right;
            margin-right: 20px;">添加订单信息成功！</div>
        <a href="${pageContext.request.contextPath}/order/orderInfo.htm" ><div style="width: 100px;
            float: left;
            height: 30px;
            background: #00F9AA;
            margin-top: 5px;
            line-height: 30px;
            color: white;
            border-radius: 15px;">前往查看</div></a>
    </div>
    <%
    }
%>
<div class="bookHead">
    <span style="font-size: 24px;font-weight: normal;font-family: Microsoft YaHei;color: rgb(138, 138, 140);">
        我的预定
    </span>
</div>
<%
    if (null == session.getAttribute("user")) {
%>
<div class="warm"
     style="background: rgba(119, 116, 116, 0.25);width: 60%;height: 150px;border-right: 5px;line-height: 100px;position: relative;top: 100px;left: 20%;border-radius: 17px;">
    <div style="width: 145px;height: 100%;float:left;">
        <img src="../../../img/common/warm.png" style="width: 80px;height: 80px;margin-top: 35px;margin-left: 30px;">
    </div>
    <div style="float: left;width: 2px;background: white;height: 100%;margin-left: 1px;"></div>
    <div class="warmDiv">
        <span>用户未登录！</span><br>
        <a href="/user/openLoginPage.htm" class="button button-3d button-action button-pill" target="main">Go login!</a>
    </div>
    <div class="warmDiv">
        <span>没有账号？</span><br>
        <a href="/user/openRegisterPage.htm" class="button button-3d button-action button-pill" target="main">Go
            register!</a>
    </div>

</div>
<%
} else {
%>
<section class="zzsc-container">
    <div class="container">
        <div class="dataForm">
            <form action="${pageContext.request.contextPath}/order/addOrder.htm" method="post">
            <div class="panel-group wrap" id="bs-collapse">
                <div class="panel">
                    <div class="panel-heading">
                        <div class="inputAll">
                            <div class="inputP">
                                <span class="icon icon-pencil" style="line-height: 40px;color: gray;font-size: 12px;"></span>
                            </div>
                            <input class="inputText" type="text" name="orderTitle" placeholder="订单标题">
                        </div>
                    </div>
                </div>
                <!-- end of panel -->

                <div class="panel" style="height: 50px">
                    <div class="panel-heading">
                        <div class="inputAll" style="float: left;width: 68%;">
                            <div class="inputP">
                                <span class="icon icon-tags" style="line-height: 40px;color: gray;font-size: 12px;"></span>
                            </div>
                            <input class="inputText" style="width: 400px" type="text" name="keyWords" placeholder="添加标签">
                        </div>
                        <div class="inputAll" style="float: right;width: 30%;">
                            <div class="inputP">
                                <span class="icon icon-yen" style="line-height: 40px;color: gray;font-size: 12px;"></span>
                            </div>
                            <input class="inputText" style="width: 153px" type="text" name="price" placeholder="我的出价">
                        </div>
                    </div>
                </div>
                <!-- end of panel -->

                <div class="panel">
                    <div class="panel" style="border-radius: 5px;border: 1px solid #B5AEAE">
                        <div class="panel-heading" style="border-radius: 10px;">
                            <div style="height: 40px;width:100%;border-radius: 5px">
                                <div class="inputP">
                                    <span class="icon icon-edit" style="line-height: 40px;color: gray;font-size: 12px;"></span>
                                </div>
                                <div style="float: left;color: #AEAEAE;line-height: 40px;font-size: 14px;margin-left: 10px;">
                                    详细描述
                                </div>
                                <div class="inputP" data-toggle="collapse" data-parent="#" href="#three" style="float: right;cursor: pointer;border-width: 0px 0px 0px 1px;border-style: solid;border-color: #B5AEAE;border-radius: 1px;">
                                    <span  class="icon icon-plus" style="line-height: 40px;color: gray;font-size: 12px;"></span>
                                </div>
                            </div>
                        </div>
                        <div id="three" class="panel-collapse collapse">
                            <div class="panel-body" style="padding: 0;">
                                <textarea name="orderDescript" placeholder="预定信息的详细描述" style="height: 139px;width: 100%;border: 0;"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end of panel -->

                <div class="panel">
                    <div class="panel-heading">
                        <div class="inputAll">
                            <div class="inputP">
                                <span class="icon icon-filter" style="line-height: 40px;color: gray;font-size: 12px;"></span>
                            </div>
                            <input class="inputText" type="text" name="commond" placeholder="我的要求">
                        </div>
                    </div>
                </div>

                <div class="panel">
                    <div class="panel-heading" >
                        <input style="height: 40px" type="submit" value="提 交 预 定 信 息" class="subBut"></input>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </div>
    <!-- end of container -->
</section>

<%
    }
%>
<script src="../../../js/jquery-2.1.1.min.js " type="text/javascript"></script>
<script src='../../../js/bootstrap.js'></script>
<%--<script type="text/javascript" src="../../../js/tip/tipso.js"></script>--%>
<%--<script type="text/javascript" src="../../../js/tip/tipso.min.js"></script>--%>
<%--<script type="text/javascript" src="../../../js/tip/jquery-1.8.3.min.js"></script>--%>
<script type="text/javascript">
//    $(function() {
//        $('#tip4').tipso();
//    });
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


        function infoControl(){
            document.getElementById("info").style.display = "none";
        }
</script>
</body>
</html>
