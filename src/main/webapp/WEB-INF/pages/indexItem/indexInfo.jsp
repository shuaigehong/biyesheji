<%--
  Created by IntelliJ IDEA.
  User: shuaigehong
  Date: 2016/5/16
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页推送项详情</title>
</head>
<style type="text/css">
    .iteminfo{
        margin-top: 40px;
        background: rgba(240, 239, 238, 0.44);
        width: 100%;
        height: 825px;
        padding-top: 30px;
        border-bottom: 1px solid rgba(188, 188, 188, 0.62);
    }
    .infoContext{
        width: 100%;
        height: 100%;
    }
    .userhead{
        height: 79px;
        width: 60%;
        margin-left: 20%;
        border-bottom: 1px solid #EADBDB;
        min-width: 600px;
    }
    .userInfo{
        width: 50%;
        position: relative;
        height: 100%;
        float: left;
    }
    .userName{
        float: left;
        font: 12px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
        height: 43px;
        margin-top: 12px;
    }
    .otherInfo{
        width: 100%;
        text-align: left;
        margin-top: 10px;
    }
    .userImg{
        width: 40px;
        height: 40px;
        float: left;
        border-radius: 20px;
        margin-top: 16px;
        margin-right: 10px;
        border: 1px solid gray;
    }
    .userImg:hover{
        border: 1px solid #FD5953;
    }
    .author{
        width: 34px;
        text-align: center;
        border: 1px solid #FD5953;
        border-radius: 2px;
        color: #FD5953;
        float: left;
        margin-right: 10px;
        height: 16px;
        line-height: 16px;
    }
    .guanzhu{
        float: right;
        background: #F8F8F8;
        color: #FD5953;
        height: 28px;
        line-height: 28px;
        text-align: center;
        width: 105px;
        font-size: 14px;
        font-family: Microsoft YaHei;
        border-radius: 13px;
        margin-top: 30px;
        min-width: 105px;
        border: 1px solid #FD5953;
        cursor: pointer;
    }
    .guanzhu:hover{
        background: #FD5953;
        color: #F8F8F8;
    }
    .detail{
        text-align: center;
        width: 60%;
        margin-left: 20%;
        min-width: 600px;
    }
    .title{
        text-align: left;
        width: 100%;
        margin-top: 20px;
        font: 18px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
        margin-bottom: 10px;
    }
    .relateInfo{
        text-align: left;
        font: 12px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
        color: #BCBCBC;
        margin-bottom: 40px;
    }
    .itemImg{
        width: 320px;
        height: 320px;
    }
    .infoTitle{
        font: 18px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
        margin-top: 40px;
    }
    .p{
        font: 14px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
        color: gray;
    }
    .pinglun{
        width: 60%;
        padding-left: 20%;
        min-width: 600px;
        height: auto;
        margin-bottom: 100px;
    }
    .pinglunItem{
        height: auto;
        width: 100%;
        margin-top: 24px;
        border-bottom: 1px solid rgba(216, 212, 208, 0.8);
    }
    .pinglunUserLogo{
        width: 45px;
        height: 45px;
        border-radius: 23px;
        float: left;
        border: 1px solid #F8F8F8;
    }
    .pinglunContent{
        font: 14px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
        margin-top: 25px;
        height: 60px;
    }
    .pinglunCaozuo{
        font: 12px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
        height: 29px;
    }
    .huifu{
        float: right;
        width: 50px;
        border: 1px solid #C5C3C1;
        height: 20px;
        font: 12px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
        text-align: center;
        border-radius: 10px;
        color: #C5C3C1;
        cursor: pointer;
    }
    .like{
        width: 130px;
        height: 40px;
        line-height: 40px;
        font: 17px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
        border: 1px solid #FD5953;
        border-radius: 25px;
        color: #FD5953;
        float: right;
        margin-right: 20%;
        cursor: pointer;
    }
    .like:hover{
        background: rgba(253, 89, 83, 0.18);
    }
</style>
<body>
    <jsp:include page="../../../common/top.jsp"/>

<div class="iteminfo">
    <%--展示区--%>
    <div class="infoContext">
        <%--用户信息--%>
        <div class="userhead">
            <%--头像和基本信息--%>
            <div class="userInfo">
                <img src="../../../img/userHead/head.jpg" class="userImg">
                <%--用户名--%>
                <div class="userName">
                    <%--作者标签--%>
                    <div>
                        <div class="author">作者</div>
                        <div style="color: #1ba1e2;">lihongZhang</div>
                    </div>
                    <%--其他信息--%>
                    <div class="otherInfo">
                        <span style="margin-right: 12px;">12个预定</span><span>被200人关注</span>
                    </div>
                </div>
            </div>
             <%--添加关注选项--%>
            <div class="guanzhu">
                <span class="icon icon-plus" style="font-size: 12px;
                border-right: 1px solid #f0efee;
                margin-right: 4px;
                padding-right: 5px;
                height: 0px;"></span>
                添加关注
            </div>
        </div>
        <%--详细信息区--%>
        <div class="detail">
            <%--标题--%>
            <div class="title">
                人人都有一颗爱美的心
            </div>
            <div class="relateInfo">
                <span class="icon icon-yen"></span>
                赏金:120 ,
                <span class="icon icon-heart"></span
                >喜欢:123 ,
                <span class="icon icon-tags"></span>
                标签：<tag>爱美</tag> ,
                <span class="icon icon-user-md"></span>
                制作商:杭州喜乐登服装制作公司
            </div>
            <img src="../../../img/welcomePage/modelImg/480_soft_days.jpg" class="itemImg">
                <%--详细描述--%>
            <div style="text-align: left;">
                <h1 class="infoTitle">详细描述</h1>
            <p class="p" style="text-indent: 2em"> V领：领设计加上褶皱设计 修身时尚;  
                优雅简约的V领开衫非常百搭，温婉的领型体现女生柔柔的气质 一字领：略带弧形的一字领，便于搭配服装 翻领：独特的双层翻领设计，尽显优雅大气韵味  高领：高领设计舒适不紧绷可挽领随意竖立领型 
            </p>
            </div>
                <%--要求--%>
            <div style="text-align: left;">
                <h1 class="infoTitle">相关要求</h1>
                <p class="p">V领，纯棉，图案部分使用蓝色</p>
            </div>
        </div>
        <div class="like">
            <span class="icon icon-heart" style="float: left;margin-top: 12px;margin-left: 21px;"></span>
            <div style="float: left;
                margin-top: 7px;
                border-left: 1px solid #FD5953;
                margin-left: 13px;
                padding-left: 13px;">
                喜 欢
            </div>
        </div>
    </div>
    <%--评论区--%>
        <div style="width: 60%;margin-left: 20%;height: 26px;min-width: 600px;margin-top: 40px;border-bottom: 1px solid gray;">
            <div style="width: 34%;float: left;
               font: 14px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
               color: gray;">
                共8条评论
            </div>
            <div style="float: right;
                width: 90px;
                text-align: right;
                font: 14px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
                cursor: pointer;
                color: gray;">
                <span class="icon icon-pencil"></span>
                添加新评论
            </div>
        </div>
    <div class="pinglun">

        <%
            for (int i = 0; i < 8; i++) {
                String logo = "user"+((i+1)%3+1)+".jpg";
        %>
        <%--评论项--%>
        <div class="pinglunItem">
            <%--评论人信息--%>
            <div style="height: 50px;">
                <a href="${pageContext.request.contextPath}/lookUser/openPage.htm" target="main"><img src="../../../img/userHead/<%=logo%>" class="pinglunUserLogo"></a>
                <div style="float: left;margin-left: 15px;">
                    <div style="height: 25px;color: #2FA9E7;font: 12px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;">
                        user<%=i+1%>
                    </div>
                    <div style="font: 12px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;color: gray;">
                        <%=i+1%>楼 . 2012.5.16 07:42
                    </div>
                </div>
            </div>
            <%--评论内容--%>
            <div class="pinglunContent">
                真心觉得不错感觉自己也可以来一件
            </div>
            <%--相关操作--%>
            <div class="pinglunCaozuo">
                <span class="icon icon-heart-empty"></span>喜欢(0)
                <div class="huifu">回复</div>
            </div>
        </div>
        <%
            }
        %>
    </div>
    <div style="width: 60%;
        margin-left: 20%;
        min-width: 600px;
        height: 170px;
        margin-bottom: 100px;
        border: 1px solid #DFDCD9;
        border-radius: 5px;">
        <div style="width: 100%;
         height: 125px;">
            <textarea placeholder="写下你的评论...." style="width: 100%;
            height: 100%;
            border: none;
            border-radius: 12px;
            padding: 5px;
            font: 14px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;"></textarea>
        </div>
        <div style="height: 35px;
            width: 86px;
            margin-left: 5px;
            background: #fd5953;
            font: 17px/1.5 \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
            line-height: 35px;
            text-align: center;
            color: white;
            border-radius: 6px;
            margin-top: 5px;
            cursor: pointer;">
            发 表
        </div>
    </div>
</div>
</body>
</html>
