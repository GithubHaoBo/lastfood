<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>关于我</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/phone/css/all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/phone/css/aboutme.css">


<body>
<div id="app">
    <div class="aboutme-title">
        <a href="${pageContext.request.contextPath}/mobile"><img src="${pageContext.request.contextPath}/phone/imgmobile/return.png" alt=""></a>
        我 的
    </div>
    <div class="my-null-top"></div>
    <!-- 卡片 -->
    <div class="aboutme-top">
        <div class="user-head">
            <img src="${pageContext.request.contextPath}/phone/imgmobile/imgnull.jpg" alt="">
        </div>
        <div class="user-name">
            <strong>${MUSER.u_fullname}</strong>
            <span>登录名：${MUSER.u_loginname}</span>
        </div>
    </div>

    <!-- 功能 -->
    <div class="domain">
        <a href="${pageContext.request.contextPath}/mobile/toeditme">
            <img src="${pageContext.request.contextPath}/phone/imgmobile/edit.png" alt="">
            <span>个人信息</span>
            <i><img src="${pageContext.request.contextPath}/phone/imgmobile/enter.png" alt=""></i>
        </a>
        <a href="${pageContext.request.contextPath}/mobile/toorder">
            <img src="${pageContext.request.contextPath}/phone/imgmobile/myorder.png" alt="">
            <span>我的订单</span>
            <i><img src="${pageContext.request.contextPath}/phone/imgmobile/enter.png" alt=""></i>
        </a>
        <a href="${pageContext.request.contextPath}/mobile/toshopcart">
            <img src="${pageContext.request.contextPath}/phone/imgmobile/myshopcart.png" alt="">
            <span>我的购物车</span>
            <i><img src="${pageContext.request.contextPath}/phone/imgmobile/enter.png" alt=""></i>
        </a>
        <a href="${pageContext.request.contextPath}/mobile/user/exit">
            <img src="${pageContext.request.contextPath}/phone/imgmobile/logout.png" alt="">
            <span>退出登录</span>
            <i><img src="${pageContext.request.contextPath}/phone/imgmobile/enter.png" alt=""></i>
        </a>
    </div>



    <div class="my-null-bottom"></div>
    <!-- 底部导航 -->
    <div class="nav">
        <ul>
            <li>
                <a href="${pageContext.request.contextPath}/mobile">
                    <span class="nav-ico"></span>
                    <span>首页</span>
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/mobile/toshopcart">
                    <span class="nav-ico"></span>
                    <span>餐车</span>
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/mobile/toaboutme">
                    <span class="nav-ico"></span>
                    <span>我的</span>
                </a>
            </li>
        </ul>
    </div>
</div>
</body>

</html>
