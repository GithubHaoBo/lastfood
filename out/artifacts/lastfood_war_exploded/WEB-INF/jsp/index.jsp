<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>网上餐厅后台商户管理平台</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/logo.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/public/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/public/js/xadmin.js"></script>
    <!-- 导入jquery插件 -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-migrate-1.2.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/fkjava_timer.js"></script>


    <script type="text/javascript">
        /** 文档加载完成后立即执行的方法 */
        // var weeks = new Array();

        $(function () {
            $("#nowTime").runTimer();
            var calendar = showCal();
            $("#currentDate").text("农历" + calendar);


            $("#exit").click(function () {
                /** parent从主界面进行退出,避免局部刷新*/
                layer.confirm("确定要退出当前用户吗？", function (index) {
                    parent.location = "${pageContext.request.contextPath}/exit";
                });
            });

        });

    </script>


</head>
<body oncontextmenu="self.event.returnValue=false" onselectstart="return false">
<!-- 顶部开始 -->
<div class="container">
    <div class="logo"><a style="width:300px;">网上餐厅后台商户管理平台</a>
    </div>

    <div class="left_open">
        <i title="展开左侧栏" class="iconfont">&#xe699;</i>
    </div>


    <div class="left_open" style="margin-top:15px;">
        <p style="color:white;margin-left:100px;">当前时间 ：<span id="nowTime"></span></p>
    </div>
    <div class="left_open" style="margin-top:15px;">
        <p style="color:white;margin-left:14px;"><span id="currentDate"></span></p>
    </div>


    <ul class="layui-nav right">
        <li class="layui-nav-item">
            <a href="javascript:;">${sessionScope.user_session.s_fullname}</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
                <dd><a href="#" id="exit">注销退出</a></dd>
            </dl>
        </li>
    </ul>

</div>
<!-- 顶部结束 -->
<!-- 中部开始 -->
<!-- 左侧菜单开始 -->
<div class="left-nav">
    <div id="side-nav">
        <ul id="nav">


            <%--系统首页--%>
            <li>
                <a href="javascript:;">
                    <i class="layui-icon">&#xe68e;</i>
                    <cite>系统首页</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${pageContext.request.contextPath}/welcome">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>进入首页</cite>
                        </a>
                    </li>
                </ul>
            </li>

            <%--店铺信息--%>
            <li>
                <a href="javascript:;">
                    <i class="layui-icon">&#xe655;</i>
                    <cite>店铺信息</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${pageContext.request.contextPath}/store/toedit">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>完善店铺信息</cite>
                        </a>
                    </li>
                </ul>
            </li>


            <!-- 管理员所看员工管理界面 -->

            <li id="employee">
                <a href="javascript:;">
                    <i class="layui-icon">&#xe770;</i>
                    <cite>员工管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${pageContext.request.contextPath}/emp/list">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>员工列表</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="${pageContext.request.contextPath}/emp/toadd">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>添加员工</cite>
                        </a>
                    </li>
                    <%--<li>--%>
                    <%--<a _href="${pageContext.request.contextPath}/employee/toimport">--%>
                    <%--<i class="iconfont">&#xe6a7;</i>--%>
                    <%--<cite>批量导入</cite>--%>
                    <%--</a>--%>
                    <%--</li>--%>
                </ul>
            </li>


            <%--菜品类别管理--%>
            <li>
                <a href="javascript:;">
                    <i class="layui-icon">&#xe653;</i>
                    <cite>餐品类别管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${pageContext.request.contextPath}/category/list">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>餐品类别列表</cite>
                        </a>
                    </li>
                    <li id="dept">
                        <a _href="${pageContext.request.contextPath}/category/toadd">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>添加类别</cite>
                        </a>
                    </li>
                </ul>
            </li>

            <%--菜品管理--%>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe6b4;</i>
                    <cite>餐品管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${pageContext.request.contextPath}/menu/list">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>餐品列表</cite>
                        </a>
                    </li>
                    <li id="job">
                        <a _href="${pageContext.request.contextPath}/menu/toadd">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>添加餐品</cite>
                        </a>
                    </li>
                </ul>
            </li>

            <%--公告管理--%>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe6ce;</i>
                    <cite>公告管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${pageContext.request.contextPath}/notice/list">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>公告列表</cite>
                        </a>
                    </li>
                    <li id="notice">
                        <a _href="${pageContext.request.contextPath}/notice/toadd">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>添加公告</cite>
                        </a>
                    </li>
                </ul>
            </li>

            <%--订单管理--%>
            <li>
                <a href="javascript:;">
                    <i class="layui-icon">&#xe65e;</i>
                    <cite>订单管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${pageContext.request.contextPath}/order/list">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>订单查看</cite>
                        </a>
                    </li>
                </ul>
            </li>

            <%--评论管理--%>
            <li>
                <a href="javascript:;">
                    <i class="layui-icon">&#xe606;</i>
                    <cite>评论管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${pageContext.request.contextPath}/pinglun/querylist2">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>评论查看</cite>
                        </a>
                    </li>
                </ul>
            </li>

        </ul>
    </div>
</div>
<!-- <div class="x-slide_left"></div> -->
<!-- 左侧菜单结束 -->
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
        <ul class="layui-tab-title">
            <li class="home"><i class="layui-icon">&#xe68e;</i>我的桌面</li>
        </ul>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe src='${pageContext.request.contextPath}/welcome' frameborder="0" scrolling="yes"
                        class="x-iframe"></iframe>
            </div>
        </div>
    </div>
</div>
<div class="page-content-bg"></div>
<!-- 右侧主体结束 -->
<!-- 中部结束 -->
<!-- 底部开始 -->
<div class="footer" style="background-color:RGB(43,48,59)">
    <div class="copyright" align="center" style="background-color:RGB(43,48,59)">Copyright ©2020</div>
</div>
<!-- 底部结束 -->

</body>
</html>