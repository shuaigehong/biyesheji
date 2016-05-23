<%@ page import="com.bishe.domain.AdminDo" %><%--
  Created by IntelliJ IDEA.
  User: shuaigehong
  Date: 2016/5/23
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员首页</title>
    <style type="text/css">
        .activeDiv{
            float: left;
            line-height: 54px;
            width: 100px;
            text-align: center;
            border-bottom: 6px solid #EC061C;
            cursor: pointer;
        }
        .navDiv{
            float: left;
            width: 100px;
            line-height: 54px;
            text-align: center;
            cursor: pointer;
        }
    </style>
</head>
<body style="border: 0;padding: 0;margin: 0;">
<div style="width: 100%;height: 60px;background: black;">
    <div style="height: 100%;width: 20%;margin-left: 23px;color: white;line-height: 60px;font-size: 24;float: left;font-weight: bold;">
        订做系统后台管理
    </div>
    <div style="width: 60%;color: white;height: 100%;float: left;">
        <div id="div1" class="activeDiv" onclick="switchDiv(1)" style="display: block">
            商家审核
        </div>
        <div id="div2" class="navDiv" onclick="switchDiv(2)" style="display: none">
            更改配置
        </div>
    </div>
    <div style=" color: white;width:100px;float: right;line-height: 60px;">
        欢迎:<%=((AdminDo)session.getAttribute("admin")).getName()%>
    </div>
</div>
<div id="companyDiv">
    当前没有制造商注册！
</div>
<div id="systemConfig">当期系统无任何配置项！</div>
<script type="text/javascript">
    function switchDiv(flag){
        var companyDiv = document.getElementById("companyDiv");
        var systemConfig = document.getElementById("systemConfig");
        var div1 = document.getElementById("div1");
        var div2 = document.getElementById("div2");
        if (flag==1){
            div1.className = "activeDiv";
            div2.className = "navDiv";
            companyDiv.style.display="block";
            systemConfig.style.display = "none";
        }else{
            div2.className = "activeDiv";
            div1.className = "navDiv";
            companyDiv.style.display="none";
            systemConfig.style.display = "block";
        }
    }
</script>
</body>
</html>
