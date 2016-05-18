<%@ page import="com.bishe.domain.OrderInfoDo" %>
<%@ page import="java.util.List" %>
<%@ page import="com.bishe.web.userUtils.UserInfoUtils" %><%--
  Created by IntelliJ IDEA.
  User: shuaigehong
  Date: 2016/5/17
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户的订单信息</title>
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
        height: 300px;
        display: block;
        margin-left: 10%;
    }
    .orderItem{
        width: 100%;
        height: 80px;
        border-bottom: 1px solid #DBDBDB;
        line-height: 80px;
        font-family: \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
        color: gray;
    }
    .orderItem:hover{
        background: rgba(128, 128, 128, 0.21);
    }
    .orderUserLogo{
        height: 50px;
        width: 50px;
        border-radius: 25px;
        border: 1px solid #07F5A8;
        float: left;
        margin-top: 16px;
    }
    .orderContent{
        float: left;
        width: 599px;
        margin-left: 15px;
        height: 80px;
    }
    .orderTitle{
        height: 40px;
        width: 100%;
        line-height: 50px;
        font-size: 17px;
    }
    .orderOtherInfo{
        height: 40px;
        line-height: 30px;
        font-size: 13px;
    }
    .orderControl{
        float: left;
        height: 100%;
    }
    .orderTime{
        height: 40px;
        font-size: 12px;
        line-height: 65px;
    }
    .orderControlBut{
        height: 22px;
        line-height: 22px;
        font-size: 14px;
        border: 1px solid gray;
        border-radius: 9px;
        margin-top: 8px;
        text-align: center;
        color: gray;
    }
</style>
<body style="padding: 0;margin: 0;border: 0;">
<jsp:include page="../../../common/top.jsp"/>
<%
    String flag = (String)request.getAttribute("flag");
    if (null != flag && flag.equals("error")){
        %>
        获取信息出错！
    <%
    }else{
        Object result = request.getAttribute("result");
        List<Object> orderInfoDos = (List)result;
    %>
        <%--头部基本信息部分--%>
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
                <img src="../../../img/userHead/user1.jpg" class="userLogo">
                <div style="height: 34px;
                    text-align: center;
                    font: 19px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
                    padding-top: 7px;
                    color: rgb(0, 0, 0)">
                    <%=UserInfoUtils.getUserInfo(request).getUserName()%>
                </div>
            </div>
            <div style="height: 100px;
                width: 100%;">
                <div class="orderInfo"><%=orderInfoDos.size()%>个订单</div>
                <div class="guanzhu">200个关注</div>
                <div class="like">124个喜欢</div>
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
        <div id="order" class="selectOn" style="border-right: 1px solid #DBDBDB;" onclick="switchShow(1)">我的订单</div>
        <div id="idea" class="selectOff" style="margin-left: 12px;" onclick="switchShow(2)">我的创意</div>
    </div>
    <%--内容区--%>
    <div style="margin-top: 15px;">
        <%--订单信息--%>
        <div id="orderInfo" class="relatedInfo" style="display: block">
            <%
                int size = orderInfoDos.size();
                if (size==0){
            %>
                <div style="    font: 14px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
    margin-top: 30px;">你当前没有任何订单！</div>
            <%
                }
                for (int i = 0; i < size; i++) {
                    OrderInfoDo orderInfoDo = (OrderInfoDo)orderInfoDos.get(i);
            %>
            <div class="orderItem">
                <img src="../../../img/userHead/user1.jpg" class="orderUserLogo">
                <div class="orderContent">
                    <div class="orderTitle"><%=orderInfoDo.getOrderTitle()%></div>
                    <div class="orderOtherInfo"><span class="icon icon-yen"></span>赏金:<%=orderInfoDo.getPrice()%>，
                        <span class="icon icon-tags"></span>标签:<%=orderInfoDo.getKeyWords()%></div>
                </div>
                <div class="orderControl">
                    <div class="orderTime">2012.5.14 16:23</div>
                    <a href="${pageContext.request.contextPath}/index/itemInfo.htm" target="main"><div class="orderControlBut">点击查看</div></a>
                </div>
            </div>
            <%
                }
            %>
        </div>
        <%--创意信息--%>
        <div id="ideaInfo" class="relatedInfo" style="display: none">
            <div style="    font: 14px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
    margin-top: 30px;">你当前没有发表任何创意！</div>
        </div>
    </div>
</div>

<%
    }
%>
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
