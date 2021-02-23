<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/phone/css/login.css">
</head>
<body>
<div id="app">
    <div class="login-title">
        <a href="${pageContext.request.contextPath}/mobile"><img src="${pageContext.request.contextPath}/phone/imgmobile/return.png" alt=""></a>
        登 录
    </div>
    <div class="login-img">
        <img src="${pageContext.request.contextPath}/phone/imgmobile/login-img.png" alt="">
    </div>
    <div class="login-content">
        <form action="${pageContext.request.contextPath}/mobile/user/login" method="post">
        <div class="login-name">
            <input type="text" placeholder="请输入登录名..." name="u_loginname">
        </div>
        <div class="login-pwd">
            <input type="password" placeholder="请输入密码..." name="u_password">
        </div>
        <div class="login-btn">
            <input type="submit" value="登 录">
        </div>
        </form>
        <div class="reg-forget">
            <span style="color:red">${mobile_msg}</span>
            <a href="${pageContext.request.contextPath}/mobile/toregist">注册账号</a>
            <a href="${pageContext.request.contextPath}/mobile/tofindpassword">忘记密码</a>
        </div>
    </div>
</div>
</body>
</html>
