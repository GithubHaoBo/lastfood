<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>餐品类别修改页面</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/public/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/public/js/xadmin.js"></script>

    <script type="text/javascript">
        $(function(){
            $("#deptForm").submit(function(){

                if (msg != ""){
                    alert(msg);
                    return false;
                }else{
                    return true;
                    $("#deptForm").submit();
                }
            });
        });

    </script>


</head>

<body>
<div class="x-body">
    <form class="layui-form" method="POST" id="deptForm"  action="${pageContext.request.contextPath}/category/edit">
        <input type="hidden" name="c_id" id="id" value="${category.c_id }" >
        <input type="hidden" name="s_id"  value="${category.s_id }" >

        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="x-red">*</span>餐品类名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="username" name="c_name" required="" lay-verify="required"
                       placeholder="输入餐品类别名"   autocomplete="off" class="layui-input" value="${category.c_name}" >
            </div>

        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">
            </label>
            <input type="submit" value=" 提交" class="layui-btn" lay-filter="add" lay-submit=""/>

        </div>
    </form>
</div>

</body>

</html>