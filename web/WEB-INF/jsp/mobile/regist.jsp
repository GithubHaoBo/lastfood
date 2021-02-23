<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/phone/css/regist.css">
</head>

<body>
<div id="app">
    <div class="regist-title">
        <a href="${pageContext.request.contextPath}/mobile/tologin"><img src="${pageContext.request.contextPath}/phone/imgmobile/return.png" alt=""></a>
        注 册
    </div>
    <div class="regist-img">
        <img src="${pageContext.request.contextPath}/phone/imgmobile/login-img.png" alt="">
    </div>
    <div class="regist-content">
        <form action="${pageContext.request.contextPath}/mobile/user/register" method="post">
        <div class="regist-loginname">
            <input type="text" placeholder="请输入登录名..." name="u_loginname">
        </div>
        <div class="regist-pwd">
            <input type="password" placeholder="请输入密码..." name="u_password">
        </div>
        <div class="regist-rpwd">
            <input type="password" placeholder="请再次输入密码...">
        </div>
        <div class="regist-fullname">
            <input type="text" placeholder="请输入真实姓名..." name="u_fullname">
        </div>
        <div class="regist-sex">
            男<input type="radio" name="u_sex" checked value="男">
            女<input type="radio" name="u_sex" value="女">
        </div>
        <div class="regist-age">
            <input type="text" placeholder="请输入年龄..." name="u_age">
        </div>
        <div class="regist-card">
            <input type="text" placeholder="请输入身份证号..." name="u_card">
        </div>
        <div class="regist-addr">
            <input type="text" placeholder="请输入家庭住址..." name="u_address">
        </div>
        <div class="regist-phone">
            <input type="text" placeholder="请输入电话号码..." name="u_phone">
        </div>
        <div class="regist-email">
            <input type="text" placeholder="请输入电子邮箱..." name="u_email">
        </div>
        <div class="regist-code">
            <input type="text" placeholder="请输入邮政编码..." name="u_code">
        </div>
        <div class="regist-btn">
            <input type="submit" value="注 册">
        </div>
        </form>
    </div>
</div>
</body>

</html>
