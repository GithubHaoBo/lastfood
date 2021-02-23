<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>店铺修改页面</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/public/lib/layui/layui.js"
            charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/public/js/xadmin.js"></script>

    <script type="text/javascript">
        $(function () {
            $("#deptForm").submit(function () {

                if (msg != "") {
                    alert(msg);
                    return false;
                } else {
                    return true;
                    $("#deptForm").submit();
                }
            });
        });

    </script>


</head>

<body>
<div class="x-body">
    <form class="layui-form" method="POST" id="deptForm" action="${pageContext.request.contextPath}/store/edit">
        <input type="hidden" name="s_id" id="id" value="${store.s_id }">

        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="x-red">*</span>登录名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="username" name="s_loginname" required="" lay-verify="required"
                       placeholder="登录名" autocomplete="off" class="layui-input" value="${store.s_loginname }" readonly>
            </div>

        </div>

        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="x-red">*</span>年龄
            </label>
            <div class="layui-input-inline">
                <input type="text" name="s_age" required="" lay-verify="required"
                       placeholder="输入年龄" autocomplete="off" class="layui-input" value="${store.s_age }">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="x-red">*</span>电话
            </label>
            <div class="layui-input-inline">
                <input type="text" name="s_phone" required="" lay-verify="required"
                       placeholder="输入电话" autocomplete="off" class="layui-input" value="${store.s_phone }">
            </div>
        </div>


        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="x-red">*</span>真实姓名
            </label>
            <div class="layui-input-inline">
                <input type="text" name="s_fullname" required="" lay-verify="required"
                       placeholder="输入姓名" autocomplete="off" class="layui-input" value="${store.s_fullname }">
            </div>
        </div>


        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="x-red">*</span>邮箱
            </label>
            <div class="layui-input-inline">
                <input type="text" id="email" name="s_email" required="" lay-verify="required"
                       placeholder="请输入邮箱" autocomplete="off" class="layui-input" value="${store.s_email}">
            </div>
        </div>

            <div class="layui-form-item">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>店铺名
                </label>
                <div class="layui-input-inline">
                    <input type="text" name="s_shopname" required="" lay-verify="required"
                           placeholder="输入店铺名" autocomplete="off" class="layui-input" value="${store.s_shopname }">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>店铺描述
                </label>
                <div class="layui-input-inline">
                    <input type="text" name="s_desc" required="" lay-verify="required"
                           placeholder="输入店铺描述" autocomplete="off" class="layui-input" value="${store.s_desc }">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>店铺地址
                </label>
                <div class="layui-input-inline">
                    <input type="text" name="s_address" required="" lay-verify="required"
                           placeholder="输入店铺地址" autocomplete="off" class="layui-input" value="${store.s_address }">
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