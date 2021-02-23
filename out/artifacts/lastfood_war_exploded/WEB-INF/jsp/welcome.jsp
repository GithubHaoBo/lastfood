<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>欢迎页面</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/logo.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/xadmin.css">
    <!-- 导入jquery插件 -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-migrate-1.2.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/fkjava_timer.js"></script>
    <script type="text/javascript" src="https://cdn-hangzhou.goeasy.io/goeasy.js"></script>

    <script type="text/javascript">
        $(function () {
            $("#nowTime").runTimer();
        })
    </script>


</head>
<body oncontextmenu="self.event.returnValue=false" onselectstart="return false">
<div class="x-body layui-anim layui-anim-up">
    <blockquote class="layui-elem-quote">欢迎
        <span class="x-red">${sessionScope.user_session.s_fullname}</span>登录系统！当前时间:<span id="nowTime"></span>
    </blockquote>

    <fieldset class="layui-elem-field">
        <legend>系统通知</legend>
        <div class="layui-field-box">
            <table class="layui-table" lay-skin="line">
                <tbody>
                <tr>
                    <td>
                        <a target="_blank">网上餐厅后台商户管理平台上线了!!!</a>
                    </td>
                </tr>

                </tbody>
            </table>
        </div>
    </fieldset>
    <fieldset class="layui-elem-field">
        <legend>系统信息</legend>
        <div class="layui-field-box">
            <table class="layui-table">
                <tbody>

                <tr>
                    <th>系统版本</th>
                    <td>2020.05</td>
                </tr>
                <tr>
                    <th>服务器地址</th>
                    <td>本机服务</td>
                </tr>
                <tr>
                    <th>操作系统</th>
                    <td>WINDOWS10</td>
                </tr>
                <tr>
                    <th>运行环境</th>
                    <td>Apache/Tomcat v9.0 (Win64) JDK1.8.0_161</td>
                </tr>

                <tr>
                    <th>MYSQL版本</th>
                    <td>5.0.67</td>
                </tr>

                <tr>
                    <th>学号</th>
                    <td>B16041613</td>
                </tr>
                <tr>
                    <th>姓名</th>
                    <td>李浩博</td>
                </tr>
                <tr>
                    <th>专业</th>
                    <td>软件工程</td>
                </tr>
                </tbody>
            </table>
        </div>
    </fieldset>
    <fieldset class="layui-elem-field">
        <legend>开发团队</legend>
        <div class="layui-field-box">
            <table class="layui-table">
                <tbody>
                <tr>
                    <th>版权所有</th>
                    <td>李浩博</td>
                </tr>
                <tr>
                    <th>开发者</th>
                    <td>李浩博</td>
                </tr>
                </tbody>
            </table>
        </div>
    </fieldset>
    <blockquote class="layui-elem-quote layui-quote-nm">感谢郑卫东老师的指导！</blockquote>
</div>
<script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</body>
</html>