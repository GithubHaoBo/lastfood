<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的餐车</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/phone/css/shopcart.css">


<body>
<div id="app">
    <div class="shopcart-title">
        <a href=""><img src="${pageContext.request.contextPath}/phone/imgmobile/return.png" alt=""></a>
        我的餐车
    </div>
    <div class="my-null-top"></div>

    <div class="shop-content">
        <table>
            <tr>
                <td>餐品名称</td>
                <td>餐品单价</td>
                <td>订购数量</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${mobileshoppingCart.map }" var="item">

                <!-- 计算份数 -->
                <c:set value="${item.value.sums+sumTotal }"
                       var="sumTotal"></c:set>
                <!-- 计算总价 -->
                <c:set
                        value="${item.value.price*item.value.sums+total }"
                        var="total"></c:set>
                <tr>
                    <td>${item.value.menuname }</td>
                    <td>￥${item.value.price }</td>
                    <td>${item.value.sums }</td>
                    <td><a href="${pageContext.request.contextPath}/mobile/cart/delfromcart?menuname=${item.value.menuname }">取消</a></td>
                </tr>

            </c:forEach>

            <tr>
                <td colspan="5">
                    总计：<span style="color: red;">￥${empty total?0.0:total }</span> 元
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    共 <span style="color: red;">${empty sumTotal?0:sumTotal }</span>份
                </td>
            </tr>
        </table>
    </div>

    <div class="handle">
        <a href="${pageContext.request.contextPath}/mobile/cart/clearcart">全部取消</a>
        <a href="${pageContext.request.contextPath}/mobile/cart/addorder?amount=${total}">提交订单</a>
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
