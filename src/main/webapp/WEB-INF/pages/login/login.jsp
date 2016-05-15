<%--
  Created by IntelliJ IDEA.
  User: shuaigehong
  Date: 2016/5/12
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link type="text/css" href="/css/nav/navCss/font-awesome.css" rel="stylesheet">
</head>
<style type="text/css">
    span{
        color: #74777b;
    }
    .inputAll{
        width: 270px;
        margin-left: auto;
        margin-right: auto;
        height: 40px;
        border-radius: 5px;
        border: 1px solid rgba(171, 162, 162, 0.87);
    }
    .inputP{
        float: left;
        width: 40px;
        height: 40px;
        line-height: 40px;
        text-align: center;
        overflow: hidden;
        border-right: 1px solid #B5AEAE;
    }
    .inputText{
        height: 40px;
        width: 229px;
        border: 0px;
        margin-top: 0px;
        border-radius: 5px;
        padding-left: 10px;
        padding-right: 10px;
        font-size: 14px;
        color: gray;
        font-family: Microsoft YaHei;
    }
    .subBut{
        width: 100%;
        background: #FE2F91;
        color: white;
        font-size: 16px;
        font-family: Microsoft YaHei;
        font-weight: 500;
        border: 2px solid #FE2F91;
        height: 100%;
        border-radius: 5px;
        cursor: pointer;
    }
    .subBut:hover{
        background: white;
        color: #FE2F91;
    }
    .checkBox{
        font-family: "Microsoft YaHei";
        font-size: 14px;
        color: grey;
        font-weight: initial;
    }
</style>
<body>
<jsp:include page="../../../common/top.jsp"/>
<div style="height: 200px;text-align: center;width: 100%;margin-top: 80px">
    <img src="../../../img/login/loginP1.jpg" style="width: 311px;height: 129px;">
</div>
<div style="height: 40px;margin-bottom: 20px">
    <div style="width: 35%;float: left;margin-left: 11%;">
        <hr>
    </div>
    <div style="width: 8%;float: left;text-align: center;font-size: 24;font-weight: 500;font-family: Microsoft YaHei;line-height: 13px;color: gray;">
        登 录
    </div>
    <div style="width: 35%;float: left;">
        <hr>
    </div>
</div>
<%--表单--%>
<div style="height: 312px;text-align: center;width: 100%;">
    <form>
        <div class="inputAll">
            <div class="inputP"><span class="icon icon-user" style="line-height: 40px;"> </span></div>
            <input class="inputText" type="text" placeholder="用户昵称 / 电子邮件">
        </div>
        <div class="inputAll" style="margin-top: 20px">
            <div class="inputP"><span class="icon icon-key"  style="line-height: 40px;"> </span></div>
            <input class="inputText" type="password" placeholder="密码">
        </div>
        <div class="inputAll" style="margin-top: 20px;border: 0px">
            <input class="subBut" type="submit" value="登 录">
        </div>
    </form>
    <div class="inputAll" style="border: 0">
        <div  style="float: left"><input type="checkbox"><span class="checkBox">记住我？</span></div>
        <div style="float: right;"><a class="topA" href="#">忘记密码？</a> </span></div>
    </div>
</div>
</body>
</html>
