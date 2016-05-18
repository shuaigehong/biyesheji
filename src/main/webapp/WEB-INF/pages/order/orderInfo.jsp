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
        text-align: center;
        line-height: 79px;
        font-family: \5FAE\8F6F\96C5\9ED1,Tahoma, Geneva, sans-serif;
        font-size: 25px;
        color: #969595;
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
</style>
<body>
<jsp:include page="../../../common/top.jsp"/>

<div class="iteminfo">
    <%--展示区--%>
    <div class="infoContext">
        <%--用户信息--%>
        <div class="userhead">
            订单详情
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
                <span class="icon icon-tags"></span>
                标签：<tag>爱美</tag>
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
    </div>
</div>
</body>
</html>
