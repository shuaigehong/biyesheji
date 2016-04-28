<%--
  Created by IntelliJ IDEA.
  User: momei
  Date: 16/4/14
  Time: 上午9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>文件上传测试</title>
    <style type="text/css">
        #removeBut{
            background-image: url("${pageContext.request.contextPath}/img/delete.png");
            background-size: 30px 30px;
            background-position:center;
        }
        #removeBut:hover{
            background-image: url("${pageContext.request.contextPath}/img/delete.png");
            /*background-size: 30px 30px;*/
            /*background-position:center;*/
        }
        #uploadBut{
            display: none;
        }
    </style>
</head>
<link href="${pageContext.request.contextPath}/css/fileUp/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fileUp/default.css" />
<link href="${pageContext.request.contextPath}/css/fileUp/fileinput.css" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/userHead/style.css">
<body>
<i class="glyphicon glyphicon-trash text-danger"></i>
<div class="htmleaf-container">
    <header class="htmleaf-header">
        <h1>boostrap可拖动文件批量上传代码 </h1>
    </header>
    <hr style="height:2px;width:80%" >
    <div class="container kv-main" style="display:block" id="test">
        <div class="page-header">
            <h2>Bootstrap File Input Example <small></small></h2>
        </div>
        <form action="${pageContext.request.contextPath}/fileUp/upload.htm" enctype="multipart/form-data" method="post">
            <hr>
            name:<input type="text" name="name"><br>
            remark:<input type="text" name="remark"><br>
            <div class="form-group">
                <input name="file" id="file-5" class="file" type="file" multiple data-preview-file-type="any" data-upload-url="#" data-preview-file-icon="">
            </div>
            <input type="submit" value="提交">
        </form>
    </div>

</div>

<script src="${pageContext.request.contextPath}/js/fileUp/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/fileUp/fileinput.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/fileUp/fileinput_locale_zh.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/fileUp/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $("#file-5").fileinput({
        showUpload: false,
        showCaption: false,
        browseClass: "btn btn-primary btn-lg",
        fileType: "any",
        previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
        allowedFileExtensions:['jpg', 'png','gif'],
        overwriteInitial: false,
        showPreview:true
    });
</script>

</body>
</html>
