    <%@ page language="java" contentType="text/html; charset=UTF-8"
             pageEncoding="UTF-8" %>

        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
        <meta charset="UTF-8">
        <title>餐品修改页面</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4,
        initial-scale=0.8,target-densitydpi=low-dpi" />
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/font.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/xadmin.css">
        <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/public/lib/layui/layui.js"
        charset="utf-8"></script>
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
        <form class="layui-form" enctype="multipart/form-data" method="POST" id="deptForm" action="${pageContext.request.contextPath}/menu/edit">
        <input type="hidden" name="m_id" id="id" value="${menu.m_id }" >
        <input type="hidden" name="m_sales"  value="${menu.m_sales }" >
        <input type="hidden" name="m_imgname"  value="${menu.m_imgname }" >
        <input type="hidden" name="s_id" value="${menu.s_id }" >

        <div class="layui-form-item">
        <label for="username" class="layui-form-label">
        <span class="x-red">*</span>餐品名
        </label>
        <div class="layui-input-inline">
        <input type="text" id="username" name="m_name" required="" lay-verify="required"
        placeholder="输入餐品名" autocomplete="off" class="layui-input" value="${menu.m_name}">
        </div>

        </div>

        <div class="layui-form-item">
        <label for="username" class="layui-form-label">
        <span class="x-red">*</span>配料
        </label>
        <div class="layui-input-inline">
        <input type="text" name="m_burden" required="" lay-verify="required"
        placeholder="输入配料" autocomplete="off" class="layui-input" value="${menu.m_burden}">
        </div>
        </div>

        <div class="layui-form-item">
        <label for="username" class="layui-form-label">
        <span class="x-red">*</span>描述
        </label>
        <div class="layui-input-inline">
        <input type="text" name="m_desc" required="" lay-verify="required"
        placeholder="输入餐品描述" autocomplete="off" class="layui-input" value="${menu.m_desc}">
        </div>
        </div>


        <div class="layui-form-item">
        <label for="username" class="layui-form-label">
        <span class="x-red">*</span>价格
        </label>
        <div class="layui-input-inline">
        <input type="text" name="m_price" required="" lay-verify="required"
        placeholder="输入价格" autocomplete="off" class="layui-input" value="${menu.m_price}">
        </div>
        </div>
        <div class="layui-form-item">
        <label for="username" class="layui-form-label">
        <span class="x-red">*</span>类别
        </label>
        <div class="layui-input-inline">
        <select name="ca_id" class="valid">
        <c:forEach items="${requestScope.categorylist}" var="category">
                        <c:choose>
                                <c:when test="${menu.ca_id == category.c_id }">
                                        <option value="${category.c_id}" selected="selected">${category.c_name }</option>
                                </c:when>
                                <c:otherwise>
                                        <option value="${category.c_id }">${category.c_name}</option>
                                </c:otherwise>
                        </c:choose>
        </c:forEach>
        </select>
        </div>
        </div>

        <div class="layui-form-item">
        <label for="username" class="layui-form-label">
        <span class="x-red">*</span>餐品图片
        </label>
        <div class="layui-input-inline">
        <img id="pic" src="${pageContext.request.contextPath}
        /imgmenu/${menu.m_imgname}" style="width: 150px;height: 150px"> <input id="upload" name="file"
        accept="image/*" type="file" style="display: none" />
        </div>


        </div>


        <div class="layui-form-item">
        <label class="layui-form-label">
        </label>
        <input type="submit" value=" 提交" class="layui-btn" lay-filter="add" lay-submit=""/>

        </div>
        </form>
        </div>
        <script>
        $(function() {
        $("#pic").click(function() {
        $("#upload").click(); //隐藏了input:file样式后，点击头像就可以本地上传
        $("#upload").on("change", function() {
        var objUrl = getObjectURL(this.files[0]); //获取图片的路径，该路径不是图片在本地的路径
        // alert(objUrl);
        if (objUrl) {
        $("#pic").attr("src", objUrl); //将图片路径存入src中，显示出图片
        }
        });
        });
        });

        //建立一個可存取到該file的url
        function getObjectURL(file) {
        var url = null;
        if (window.createObjectURL != undefined) { // basic
        url = window.createObjectURL(file);
        } else if (window.URL != undefined) { // mozilla(firefox)
        url = window.URL.createObjectURL(file);
        } else if (window.webkitURL != undefined) { // webkit or chrome
        url = window.webkitURL.createObjectURL(file);
        }
        return url;
        }
        </script>
        </body>

        </html>