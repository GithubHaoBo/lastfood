<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fkjava" uri="/pager-tags" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>订单信息</title>
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
        $(function(){
            if(${count}!=0){
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
        <cite>订单信息</cite></a>
        </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       href="${pageContext.request.contextPath}/order/list" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <div class="layui-row" style="" align="center">
        <form class="layui-form layui-col-md12 x-so" method="get" action="${pageContext.request.contextPath}
        /order/querylist">
            <input type="text" name="content" style="width:50%;" placeholder="请输入查找内容" autocomplete="off"
                   class="layui-input">
            <button class="layui-btn" lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>
    <table class="layui-table">
        <thead>
        <tr>
            <th>ID</th>
            <th>订单号</th>
            <th>订餐用户</th>
            <th>订购电话</th>
            <th>送餐地址</th>
            <th>餐品名称</th>
            <th>餐品数量</th>
            <th>餐品单价</th>
            <th>订单总价</th>
            <th>订单时间</th>
            <th>接单</th>
        </thead>
        <tbody>
        <c:forEach items="${requestScope.orderlist}" var="order" varStatus="stat">
            <tr>
                <td>${order.o_id}</td>
                <td>${order.o_no}</td>
                <td>${order.user.u_fullname }</td>
                <td>${order.user.u_phone }</td>
                <td>${order.user.u_address}</td>
                <td>${order.menu.m_name}</td>
                <td>${order.m_num}</td>
                <td>${order.menu.m_price}</td>
                <td>${order.m_num*order.menu.m_price}</td>
                <td>${order.o_time}</td>
                <c:if test="${order.o_state==0}">
                <td class="td-manage">
                    <a title="编辑" onclick="member_edit(this,'${order.o_id }')" href="javascript:;"
                       type="button" class="layui-btn layui-btn-sm">
                        <i class="layui-icon">&#xe605;</i>
                    </a>
                </td>
                </c:if>
                <c:if test="${order.o_state==1}">
                    <td class="td-manage">
                        <a title="编辑"
                           type="button" class="layui-btn layui-btn-sm layui-btn-disabled">
                            <i class="layui-icon">&#xe605;</i>
                        </a>
                    </td>
                </c:if>
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
                submitUrl="${pageContext.request.contextPath}/order/list?pageIndex={0}"/>
    </div>
    <div style="margin-left: 500px; display: none;" id="count2">
        <p style="color: rgb(0,97,222)">共查询到<font color="red">${count}</font>条数据</p>
    </div>

</div>
<script type="text/javascript">

    function member_edit(obj, id) {
        layer.confirm('确认接单？', function (index) {
            $.get("${pageContext.request.contextPath}/order/edit?o_id=" + id);
            $(obj).attr("class","layui-btn layui-btn-sm layui-btn-disabled");
            $(obj).removeAttr("onclick");
            $(obj).removeAttr("href");
            layer.msg('已接单!', {icon: 1, time: 1000});
        });
    }

</script>

</body>

</html>