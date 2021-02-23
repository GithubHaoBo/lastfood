<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fkjava" uri="/pager-tags" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>评论信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4,
        initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/logo.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/public/lib/layui/layui.js"
            charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/public/js/xadmin.js"></script>
    <script type="text/javascript">
        $(function () {
            if (${count}!=0) {
                $("#count1").hide();
                $("#count2").show();
            }
        })
    </script>


</head>

<body>
<div class="x-nav">
        <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a>
        <cite>评论信息</cite></a>
        </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       href="${pageContext.request.contextPath}/pinglun/list" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <div class="layui-row" style="" align="center">
        <form class="layui-form layui-col-md12 x-so" method="get" action="${pageContext.request.contextPath}
        /pinglun/querylist">
            <input type="text" name="content" style="width:50%;" placeholder="请输入查找内容" autocomplete="off"
                   class="layui-input">
            <button class="layui-btn" lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>
    <table class="layui-table">
        <thead>
        <tr>
            <th>ID</th>
            <th>菜品名</th>
            <th>评论用户</th>
            <th>用户电话</th>
            <th>评价内容</th>
            <th>评价时间</th>
        </thead>
        <tbody>
        <c:forEach items="${requestScope.pinglunlist}" var="pinglun" varStatus="stat">
            <tr>
                <td>${pinglun.p_id}</td>
                <td>${pinglun.menu.m_name}</td>
                <td>${pinglun.user.u_fullname }</td>
                <td>${pinglun.user.u_phone }</td>
                <td>${pinglun.p_content}</td>
                <td>${pinglun.p_time}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <!-- 分页标签 -->
    <div style="margin-left: 400px;" id="count1">
        <fkjava:pager
                pageIndex="${requestScope.pageModel.pageIndex}"
                pageSize="${requestScope.pageModel.pageSize}"
                recordCount="${requestScope.pageModel.recordCount}"
                style="digg"
                submitUrl="${pageContext.request.contextPath}/pinglun/list?pageIndex={0}"/>
    </div>
    <div style="margin-left: 500px; display: none;" id="count2">
        <p style="color: rgb(0,97,222)">共查询到<font color="red">${count}</font>条数据</p>
    </div>

</div>
<script type="text/javascript">

    /*用户-删除*/
    <%--function member_edit(obj, id) {--%>
        <%--layer.confirm('确认接单？', function (index) {--%>
            <%--$.get("${pageContext.request.contextPath}/pinglun/edit?o_id=" + id);--%>
            <%--$(obj).attr("class","layui-btn layui-btn-sm layui-btn-disabled");--%>
            <%--$(obj).removeAttr("onclick");--%>
            <%--$(obj).removeAttr("href");--%>
            <%--layer.msg('已接单!', {icon: 1, time: 1000});--%>
        <%--});--%>
    <%--}--%>

</script>

</body>

</html>