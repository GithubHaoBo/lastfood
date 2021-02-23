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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/phone/css/editme.css">
</head>

<body>
<div id="app">
    <div class="editme-title">
        <a href="${pageContext.request.contextPath}/mobile/toaboutme"><img src="${pageContext.request.contextPath}/phone/imgmobile/return.png" alt=""></a>
        个人中心
    </div>
    <div class="editme-img">
        <img src="${pageContext.request.contextPath}/phone/imgmobile/login-img.png" alt="">
    </div>
    <div class="editme-content">
        <form action="${pageContext.request.contextPath}/mobile/user/upduser" method="post">
            <input type="hidden" name="u_id" value="${MUSER.u_id}">
        <div class="editme-loginname">
            <input type="text" placeholder="请输入登录名..." name="u_loginname" value="${MUSER.u_loginname}" readonly >
        </div>
        <div class="editme-fullname">
            <input type="text" placeholder="请输入真实姓名..."  name="u_fullname" value="${MUSER.u_fullname}">
        </div>
        <div class="editme-sex">
            ${MUSER.u_sex}<input type="radio" name="u_sex" checked value="${MUSER.u_sex}">
        </div>
        <div class="editme-age">
            <input type="text" placeholder="请输入年龄..." name="u_age" value="${MUSER.u_age}">
        </div>
        <div class="editme-card">
            <input type="text" placeholder="请输入身份证号..." name="u_card" value="${MUSER.u_card}">
        </div>
        <div class="editme-addr">
            <input type="text" placeholder="请输入家庭住址..." name="u_address" value="${MUSER.u_address}">
        </div>
        <div class="editme-phone">
            <input type="text" placeholder="请输入电话号码..." name="u_phone" value="${MUSER.u_phone}">
        </div>
        <div class="editme-email">
            <input type="text" placeholder="请输入电子邮箱..." name="u_email" value="${MUSER.u_email}">
        </div>
        <div class="editme-code">
            <input type="text" placeholder="请输入邮政编码..." name="u_code" value="${MUSER.u_code}">
        </div>
        <div class="editme-btn">
            <input type="submit" value="修 改">
        </div>
        </form>
    </div>
</div>
</body>

</html>
