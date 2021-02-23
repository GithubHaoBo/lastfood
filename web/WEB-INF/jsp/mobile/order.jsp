<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的订单</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/phone/css/order.css">


<body>
<div id="app">
    <div class="order-title">
        <a href=""><img src="${pageContext.request.contextPath}/phone/imgmobile/return.png" alt=""></a>
        我的订单
    </div>
    <div class="my-null-top"></div>

    <!-- 搜索订单 -->
    <div class="search-order">
        <div>
            <input type="text" v-model="order_content" placeholder="请输入订单号/订单时间/餐品名称/收货地址...">
        </div>
        <a href="javascript:;" @click="findorder"><img src="${pageContext.request.contextPath}/phone/imgmobile/search.png" alt=""></a>
    </div>

    <!-- 订单详情 -->
    <div class="order-card" v-for="order in orderlist">
        <div class="order-no">
            订单号：{{order.o_no}}
        </div>
        <div class="order-middle">
            <div class="order-msg">
                <span>餐品名称：{{order.menu.m_name}}</span>
                <span>餐品单价：{{order.menu.m_price}}</span>
                <span>购买数量：{{order.m_num}}</span>
                <span>收货人姓名：{{order.user.u_fullname}}</span>
                <span>收货人电话：{{order.user.u_phone}}</span>
                <span>收货地址：{{order.user.u_address}}</span>
                <strong>共消费<span style="color: red;font-size: 30px;">￥{{order.menu.m_price*order.m_num}}</span>元</strong>
                <b v-if="order.o_state==0">订单已生成，商家尚未接单</b>
                <b v-show="order.o_state==1">订单已生成，商家已接单</b>
            </div>
            <div class="order-head">
                <img :src="'${pageContext.request.contextPath}/imgmenu/'+order.menu.m_imgname" alt="">
            </div>
        </div>
        <div class="order-time">
            订单时间：{{order.o_time}}
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
<script>
    var vue = new Vue({
        el:'#app',
        data:{
            order_content:'',
            orderlist:[]
        },
        created:function () {
            $.ajax({
                type:"get",
                url:"${pageContext.request.contextPath}/mobile/orderlist",
                success:function (result) {
                    vue.orderlist = result.map.orderlist
                    console.log(result.map.orderlist)
                }
            })
        },
        methods:{
            findorder(){
                var thecontent = vue.order_content
                console.log(thecontent)
                $.ajax({
                    type:"post",
                    url:"${pageContext.request.contextPath}/mobile/findorder",
                    data:{find_content:thecontent},
                    success:function (result) {
                        vue.orderlist = result.map.orderlist
                        console.log(result.map.orderlist)
                    }
                })
            }
        }
    })
</script>
</body>

</html>
