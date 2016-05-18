<%--
  Created by IntelliJ IDEA.
  User: shuaigehong
  Date: 2016/5/17
  Time: 0:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看其他用户的信息</title>
</head>
<style type="text/css">
    .orderInfo{
        text-align: center;
        height: 32px;
        line-height: 40px;
        width: 26%;
        margin-left: 37%;
        font: 15px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
        padding-top: 16px;
        margin-top: 10px;
        border-width: 0px 1px 0px 1px;
        border-style: solid;
        border-color: rgba(116, 119, 123, 0.28);
        color: rgba(99, 95, 95, 0.69);
    }
    .guanzhu{
        float: left;
        width: 30%;
        height: 34px;
        text-align: center;
        font: 15px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
        padding-top: 16px;
        border-width: 0px 1px 0px 1px;
        border-style: solid;
        border-color: #D8D9DA;
        margin-left: 20%;
        color: #939191;
    }
    .like{
        font: 15px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
        padding-top: 16px;
        float: left;
        width: 30%;
        text-align: center;
        height: 36px;
        border-right: 1px solid #D8D9DA;
        color: #939191;
    }
    .userLogo{
        height: 80px;
        border-radius: 40px;
        border: 2px solid rgb(7, 245, 168);
        width: 80px;
    }
    .userLogo:hover{
        border: 2px solid #FD5953;;
    }
    .selectOn{
        float: left;
        width: 72px;
        height: 24px;
        line-height: 24px;
        font: 15px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
        cursor: pointer;
        color: rgb(88, 86, 86);
    }
    .selectOff{
        float: left;
        width: 72px;
        font: 15px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
        height: 24px;
        line-height: 24px;
        color: #BFBEBE;
        cursor: pointer;
    }
    .relatedInfo{
        width: 80%;
        height: auto;
        display: block;
        margin-left: 10%;
    }
    .but{
        float: left;
        width: 35%;
        margin-left: 10%;
        text-align: center;
        height: 40px;
        line-height: 40px;
        border-radius: 20px;
        background: #FD5953;
        font-family: \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
        font-size: 14px;
        color: white;
        cursor: pointer;
    }
</style>
<body>

<jsp:include page="../../../../common/top.jsp"/>
<%--左边基本信息栏--%>
<div style="padding-top: 40px;
    width: 300px;
    height: 100%;
    border-right: 1px solid rgba(0, 0, 0, 0.14);
    min-width: 300px;
    box-shadow: -1px 1px 6px rgba(0,0,0,0.35);
    position: fixed">
    <%--用户头像--%>
    <div style="height: 120px;
    min-height: 80px;
    text-align: center;
    margin-top: 140px;">
        <img src="../../../../img/userHead/user1.jpg" class="userLogo">
        <div style="height: 34px;
            text-align: center;
            font: 19px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
            padding-top: 7px;
            color: rgb(0, 0, 0)">
            LihongZhang
        </div>
    </div>
    <div style="height: 100px;
        width: 100%;">
        <div class="orderInfo">12个订单</div>
        <div class="guanzhu">200个关注</div>
        <div class="like">124个喜欢</div>
    </div>
        <div style="    position: absolute;
            bottom: 50px;
            width: 100%;
            height: 50px;">
            <div class="but"><span class="icon icon-plus" style="padding-right: 4px;"></span>添加关注</div>
            <div class="but"><span class="icon icon-heart" style="padding-right: 4px;"></span>添加喜欢</div>
        </div>
</div>
<%--右边相关信息栏--%>
<div style="width: 948px;height: auto;padding-top: 40px;margin-left: 300px;background: #FFFFFF;">

    <div style="width: 80%;
        height: 31px;
        margin-top: 40px;
        margin-left: 10%;
        border-bottom: 1px solid #DBDBDB;
        min-width: 758px;">
        <%--头部选项--%>
        <div id="order" class="selectOn" style="border-right: 1px solid #DBDBDB;" onclick="switchShow(1)">他的订单</div>
        <div id="idea" class="selectOff" style="margin-left: 12px;" onclick="switchShow(2)">他的创意</div>
    </div>
    <%--内容区--%>
    <div style="margin-top: 15px;">
        <%--订单信息--%>
        <div id="orderInfo" class="relatedInfo" style="background: rebeccapurple;display: block">

        </div>
        <%--创意信息--%>
        <div id="ideaInfo" class="relatedInfo" style="background: #f8b9b7;display: none">

        </div>
    </div>
</div>
<script type="text/javascript">
    function switchShow(flag){
        var order = document.getElementById("order");
        var idea = document.getElementById("idea");
        var orderInfo = document.getElementById("orderInfo");
        var ideaInfo = document.getElementById("ideaInfo");
        if (flag==1){
            order.className = "selectOn";
            idea.className = "selectOff";
            orderInfo.style.display = "block";
            ideaInfo.style.display = "none";
        }
        else {
            order.className = "selectOff";
            idea.className = "selectOn";
            orderInfo.style.display = "none";
            ideaInfo.style.display = "block";
        }
    }
</script>
</body>
</html>
