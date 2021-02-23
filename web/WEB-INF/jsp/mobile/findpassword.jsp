<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>找回密码</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/phone/css/findpwd.css">
</head>

<body>
<div id="app">
    <div class="findpwd-title">
        <a href="${pageContext.request.contextPath}/mobile/tologin"><img src="${pageContext.request.contextPath}/phone/imgmobile/return.png" alt=""></a>
        找回密码
    </div>
    <div class="findpwd-img">
        <img src="${pageContext.request.contextPath}/phone/imgmobile/login-img.png" alt="">
    </div>
    <div class="findpwd-content">
        <form action="${pageContext.request.contextPath}/mobile/user/checkloginandcard" method="post">
        <div class="findpwd-name">
            <input type="text" placeholder="请输入登录名..." name="u_loginname">
        </div>
        <div class="findpwd-card">
            <input type="text" placeholder="请输入身份证号码..." name="u_card">
        </div>
        <div class="findpwd-btn">
            <input type="submit" value="找 回">
        </div>
            <span style="color:red">${mobile_msg}</span>
        </form>
    </div>
</div>
</body>

</html>
