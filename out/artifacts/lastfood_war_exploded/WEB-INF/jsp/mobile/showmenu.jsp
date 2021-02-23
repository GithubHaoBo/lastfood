<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>首页</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/phone/css/showmenu.css">


<body>
<div id="app">
    <div class="menu-title">
        <a href="${pageContext.request.contextPath}/mobile"><img
                src="${pageContext.request.contextPath}/phone/imgmobile/return.png" alt=""></a>
        餐品详情
    </div>
    <div class="my-null-top"></div>

    <!-- 餐品详情 -->
    <div class="menu-top">
        <div class="menu-head">
            <img src="${pageContext.request.contextPath}/imgmenu/${menus.m_imgname}" alt="">
        </div>
        <div class="menu-msg">
            <strong>${menus.m_name}</strong>
            <span>配料：${menus.m_burden}</span>
            <span>店铺：${menus.store.s_shopname}</span>
            <span style="color: red">价格：￥${menus.m_price}</span>
            <span>描述：${menus.m_desc}</span>
            <span>类别：${menus.category.c_name}</span>
            <span>销量：${menus.m_sales}</span>
            <h3 class="shop-btn">
                <a href="${pageContext.request.contextPath}/mobile/cart/addtocart?m_id=${menus.m_id }">
                    <button>加入餐车</button>
                </a>
                <a href="${pageContext.request.contextPath}/mobile/order/addorder?m_id=${menus.m_id}">
                    <button>立即购买</button>
                </a>
            </h3>
        </div>
    </div>

    <!-- 评价 -->
    <div class="comment">
        <div><b>评论列表>></b></div>
        <div class="othercomment">
            <div class="one-comment">
                <table>
                    <c:forEach items="${pinglist }" var="pinglun">
                        <tr>
                            <td>评论用户:${pinglun.user.u_loginname}</td>
                            <td><span>评论时间:${pinglun.p_time}</span></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="comment-td">
                                <div class="comment-content">${pinglun.p_content}</div>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
        <div class="mycomment">
            <div><b>我要评论>></b></div>
            <div class="content">
                <form action="${pageContext.request.contextPath}/mobile/pinglun/add" method="post">
                    <input type="hidden" name="m_id" value="${menus.m_id}">
                    <textarea name="p_content" id="" cols="30" rows="3"></textarea>
                    <br><input type="submit" value="发表评价">
                </form>
            </div>
        </div>
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
