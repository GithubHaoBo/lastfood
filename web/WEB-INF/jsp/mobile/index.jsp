<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/phone/css/index.css">


<body>
<div id="app">
    <!-- 搜索 -->
    <div class="search">
        <div>
            <input type="text" v-model="find_content" class="input-content" placeholder="请输入餐品名/类别名...">
        </div>
        <a href="javascript:;" @click="findmenu"><img src="${pageContext.request.contextPath}/phone/imgmobile/search.png" alt=""></a>
    </div>
    <div class="my-null-top"></div>

    <!-- 图片 -->
    <div class="pic">
        <img src="${pageContext.request.contextPath}/phone/imgmobile/meal.jpg" alt="">
    </div>

    <!-- 菜单列表 -->
    <div class="menu-list">
        <div class="menu-title">
            <b>餐品展示>></b>
        </div>
        <a :href="'${pageContext.request.contextPath}/mobile/menu/findmenubymid?m_id='+menu.m_id" class="menu-box" v-for="menu in menulist">
            <div class="menu-img">
                <img :src="'${pageContext.request.contextPath}/imgmenu/'+menu.m_imgname" alt="">
            </div>
            <div class="menu-msg">
                <strong>餐品名称：{{menu.m_name}}</strong>
                <strong>餐品价格：<span style="color: red;">￥{{menu.m_price}}</span></strong>
                <strong>店铺：{{menu.store.s_shopname}}</strong>
                <strong>餐品类别：{{menu.category.c_name}}</strong>
                <strong>销量：{{menu.m_sales}}</strong>
            </div>
            <div class="click-btn">
                <span>查</span>
                <span>看</span>
            </div>
        </a>
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
<script>
    var vue = new Vue({
        el:'#app',
        data:{
            find_content:'',
            menulist:[]
        },
        created:function () {
            $.ajax({
                type:"get",
                url:"${pageContext.request.contextPath}/mobile/home",
                success:function (result) {
                    vue.menulist = result.map.menulist
                    console.log(result.map.menulist)
                }
            })
        },
        methods:{
            findmenu(){
                var content = vue.find_content
                console.log(content)
                $.ajax({
                    type:"post",
                    url:"${pageContext.request.contextPath}/mobile/findmenu",
                    data:{find_content:content},
                    success:function (result) {
                        vue.menulist = result.map.menulist
                        console.log(result.map.menulist)
                    }
                })
            }
        }
    })
</script>
</body>

</html>
