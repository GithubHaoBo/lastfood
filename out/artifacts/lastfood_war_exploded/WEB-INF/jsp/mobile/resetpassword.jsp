<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>重置密码</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/logo.ico" type="image/x-icon"/>
    <!-- 导入jquery插件 -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/phone/js/vue.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/phone/css/normalize.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/phone/css/thebody.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/phone/css/resetpwd.css">
</head>

<body>
<div id="app">
    <div class="resetpwd-title">
        <a href="${pageContext.request.contextPath}/mobile/tologin"><img src="${pageContext.request.contextPath}/phone/imgmobile/return.png" alt=""></a>
        重置密码
    </div>
    <div class="resetpwd-img">
        <img src="${pageContext.request.contextPath}/phone/imgmobile/login-img.png" alt="">
    </div>
    <div class="resetpwd-content">
        <form action="${pageContext.request.contextPath}/mobile/user/resetpwd" method="post">
            <input type="hidden" value="${resetMUser.u_id}" name="u_id">
        <div class="resetpwd-name">
            <input type="text" value="${resetMUser.u_loginname}" name="u_loginname" readonly>
        </div>
        <div class="resetpwd-pwd">
            <input type="password" placeholder="请输入新的密码..." name="pwd">
        </div>
        <div class="resetpwd-rpwd">
            <input type="password" placeholder="请再次输入新密码...">
        </div>
        <div class="resetpwd-btn">
            <input type="submit" value="重 置">
        </div>
        </form>
    </div>
</div>
</body>

</html>
