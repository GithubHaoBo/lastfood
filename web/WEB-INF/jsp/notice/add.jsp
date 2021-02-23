<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>公告添加页面</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4,
        initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/public/lib/layui/layui.js"
            charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/public/js/xadmin.js"></script>

    <script type="text/javascript">
        $(function () {
            $("#deptForm").submit(function () {

                if (msg != "") {
                    alert(msg);
                    return false;
                } else {
                    return true;
                    $("#deptForm").submit();
                }
            });
        });

    </script>


</head>

<body>
<div class="x-body">
    <form class="layui-form" enctype="multipart/form-data" method="POST" id="deptForm"
          action="${pageContext.request.contextPath}/notice/add">
        <%--<input type="hidden" name="id" id="id" value="${job.id }" >--%>

        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="x-red">*</span>公告标题
            </label>
            <div class="layui-input-inline">
                <input type="text" id="username" name="n_title" required="" lay-verify="required"
                       placeholder="输入公告标题" autocomplete="off" class="layui-input">
            </div>

        </div>

        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="x-red">*</span>公告内容
            </label>
            <div class="layui-input-block">
                <textarea style="width: 500px;" name="n_content" placeholder="输入公告内容" class="layui-textarea"></textarea>
            </div>
        </div>


        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="x-red">*</span>公告海报
            </label>
            <div class="layui-input-inline">
                <%--<input type="file" id="email" name="file" required="" lay-verify="required"--%>
                <%--autocomplete="off" class="layui-input">--%>
                <img id="pic" src="${pageContext.request.contextPath}
        /imgnotice/noticenull.jpg" style="width: 250px;height: 200px"> <input id="upload" name="file"
                                                                              accept="image/*" type="file"
                                                                              style="display: none"/>
            </div>


        </div>


        <div class="layui-form-item">
            <label class="layui-form-label">
            </label>
            <input type="submit" value=" 提交" class="layui-btn" lay-filter="add" lay-submit=""/>

        </div>
    </form>
</div>
<script>
    $(function () {
        $("#pic").click(function () {
            $("#upload").click(); //隐藏了input:file样式后，点击头像就可以本地上传
            $("#upload").on("change", function () {
                var objUrl = getObjectURL(this.files[0]); //获取图片的路径，该路径不是图片在本地的路径
                // alert(objUrl);
                if (objUrl) {
                    $("#pic").attr("src", objUrl); //将图片路径存入src中，显示出图片
                }
            });
        });
    });

    //建立一個可存取到該file的url
    function getObjectURL(file) {
        var url = null;
        if (window.createObjectURL != undefined) { // basic
            url = window.createObjectURL(file);
        } else if (window.URL != undefined) { // mozilla(firefox)
            url = window.URL.createObjectURL(file);
        } else if (window.webkitURL != undefined) { // webkit or chrome
            url = window.webkitURL.createObjectURL(file);
        }
        return url;
    }
</script>
</body>

</html>