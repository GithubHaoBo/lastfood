<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fkjava" uri="/pager-tags" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>用户信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/logo.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/public/lib/layui/layui.js" charset="utf-8"></script>
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
          <cite>员工信息</cite></a>
      </span>
    <button type="button" onclick="location.href='${pageContext.request.contextPath}/emp/toadd'" class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:innert;margin-left:75%;;"  ><i class="layui-icon"></i>增加</button>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="${pageContext.request.contextPath}/emp/list" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <div class="layui-row" style="" align="center">
        <form class="layui-form layui-col-md12 x-so" method="get" action="${pageContext.request.contextPath}/emp/querylist">
            <input type="text" name="content" style="width:50%;"  placeholder="请输入查找内容" autocomplete="off" class="layui-input">
            <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>
    <table class="layui-table">
        <thead>
        <tr>
            <th>ID</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>电话</th>
            <th>邮箱</th>
            <th>薪资</th>
            <th>入职时间</th>
            <th>操作</th>
        </thead>
        <tbody>
        <c:forEach items="${requestScope.emplist}" var="emp" varStatus="stat">
            <tr>
                <td>${emp.e_id}</td>
                <td>${emp.e_name }</td>
                <td>${emp.e_age }岁</td>
                <td>${emp.e_phone}</td>
                <td>${emp.e_email}</td>
                <td>￥${emp.e_salary}.00</td>
                <td>${emp.e_createdate}</td>

                <td class="td-manage">
                    <a title="编辑"  href='${pageContext.request.contextPath}/emp/toedit?e_id=${emp.e_id}'>
                        <i class="layui-icon">&#xe642;</i>
                    </a>
                    <a title="删除" onclick="member_del(this,'${emp.e_id }')" href="javascript:;">
                        <i class="layui-icon">&#xe640;</i>
                    </a>
                </td>
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
                submitUrl="${pageContext.request.contextPath}/emp/list?pageIndex={0}"/>
    </div>
    <div style="margin-left: 500px; display: none;" id="count2">
        <p style="color: rgb(0,97,222)">共查询到<font color="red">${count}</font>条数据</p>
    </div>

</div>
<script type="text/javascript">

    /*用户-删除*/
    function member_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            //发异步删除数据
            //等以后再使用异步，这里先使用  好处：就是快    坏处：万一后台删除出问题 没有删掉
            $.get("${pageContext.request.contextPath}/emp/delete?e_id="+id);
            $(obj).parents("tr").remove();
            layer.msg('已删除!',{icon:1,time:1000});
        });
    }
    function delAll (argument) {

        var data = tableCheck.getData();

        layer.confirm('确认要删除吗？'+data,function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
    }
</script>

</body>

</html>