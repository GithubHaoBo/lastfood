<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/logo.ico" type="image/x-icon"/>
    <link href="${pageContext.request.contextPath}/qiantai/css/common.css" rel="stylesheet" type="text/css"/>
    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/qiantai/js/base.js"></script>--%>
    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/qiantai/js/common.js"></script>--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/qiantai/js/form.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/qiantai/js/blockui.js"></script>

</head>
<body style='background: transparent'>


<div id='contain'
     style='width: 900px; background: rgb(255, 255, 255); margin: 0px auto; padding: 0px'>

    <div id='top'
         style='width: 900px; height: 108px; background: none transparent scroll repeat 0% 0%'>


        <!-- 顶部菜单(一级) -->

        <div id='pdv_3607' class='pdv_class'
             style='width: 395px; height: 25px; top: 0px; left: 495px; z-index: 4'>
            <div id='spdv_3607' class='pdv_top'
                 style='overflow: hidden; width: 100%; height: 100%'>
                <div class="pdv_border"
                     style="margin: 0; padding: 0; height: 100%; border: 0px solid;  ">

                    <div style="padding: 0px">

                        <link href="${pageContext.request.contextPath}/qiantai/css/topmenu_bk.css" rel="stylesheet"
                              type="text/css"/>

                        <div id="topmenu">

                            <a href="${pageContext.request.contextPath}/front/tologin" target="_self">会员登录</a>| <a
                                href="${pageContext.request.contextPath}/front/toreg"
                                target="_self">会员注册</a>| <a
                                href="${pageContext.request.contextPath}/user/exit">注销退出</a>| <a
                                href="${pageContext.request.contextPath}/front/tocarry" target="_self">配送说明</a>|
                            <a href="${pageContext.request.contextPath}/front/toour"
                               target="_self">关于我们</a>
                        </div>

                    </div>
                </div>

            </div>
        </div>

        <!-- 二级导航菜单 -->

        <div id='pdv_3605' class='pdv_class'
             style='width: 898px; height: 41px; top: 65px; left: 0px; z-index: 6'>
            <div id='spdv_3605' class='pdv_top'
                 style='overflow: hidden; width: 100%; height: 100%'>
                <div class="pdv_border"
                     style="margin: 0; padding: 0; height: 100%; border: 0px solid;  ">
                    <div
                            style="height: 25px; margin: 1px; display: none;  ">
                        <div
                                style="float: left; margin-left: 12px; line-height: 25px; font-weight: bold; color:">

                        </div>
                        <div style="float: right; margin-right: 10px; display: none">
                            <a href="-1" style="line-height: 25px; color:">更多</a>
                        </div>
                    </div>
                    <div style="padding: 0px">

                        <link href="${pageContext.request.contextPath}/qiantai/css/A.css" rel="stylesheet"
                              type="text/css"/>
                        <%--<script type="text/javascript" src="${pageContext.request.contextPath}/qiantai/js/channelmenu_dc.js"></script>--%>

                        <div id="menu">
                            <div class="mainmenuleft"></div>
                            <div class="mainmenuright"></div>

                            <div id="mainmenu">
                                <ul>

                                    <li><a href="${pageContext.request.contextPath}/showindex" target="_self">首页</a>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/front/tofind"
                                           target="_self">查询</a></li>

                                    <li><a href="${pageContext.request.contextPath}/front/toshoppingcar" target="_self">我的餐车</a>
                                    </li>

                                    <li><a href="${pageContext.request.contextPath}/front/toorder"
                                           target="_self">我的订单</a></li>

                                    <li><a href="${pageContext.request.contextPath}/front/tocenter"
                                           target="_self">用户中心</a></li>


                                    <li><a href="${pageContext.request.contextPath}/after" target="_self">商家入驻</a>
                                    </li>

                                    <li><a href="${pageContext.request.contextPath}/user/exit">注销退出</a></li>

                                </ul>
                            </div>

                            <div id="smenu">
                                <div class="smenuleft"></div>
                                <div class="smenuright"></div>
                                <ul>

                                </ul>

                                <ul>
                                </ul>

                                <ul>
                                </ul>

                                <ul>
                                </ul>

                                <ul>
                                </ul>

                                <ul>
                                </ul>

                                <ul>
                                </ul>

                            </div>
                        </div>
                        <script>
                            // showMenu(0);
                        </script>

                    </div>
                </div>

            </div>
        </div>

        <!-- 网站标志 -->
        <div id='pdv_3608' class='pdv_class' title=''
             style='width: 208px; height: 100px; top: -22px; left: 0px; z-index: 9'>
            <div id='spdv_3608' class='pdv_top'
                 style='overflow: hidden; width: 100%; height: 100%'>
                <div class="pdv_border"
                     style="margin: 0; padding: 0; height: 100%; border: 0px solid;  ">

                    <div style="padding: 0px">
                        <img src="${pageContext.request.contextPath}/qiantai/images/1257477260.gif" alt="" width="100%"
                             border="0"/>
                    </div>


                </div>
            </div>
        </div>

        <!-- 登录后欢迎界面 -->
        <div id='pdv_3699' class='pdv_class' title=''
             style='width: 300px; height: 40; top: -120px; left: 600px; z-index: 10'>
            <div id='spdv_3608' class='pdv_top'
                 style='overflow: hidden; width: 100%; height: 100%'>
                <div class="pdv_border"
                     style="margin: 0; padding: 0; height: 100%; border: 0px solid;  ">
                    <div
                            style="height: 25px; margin: 1px; display: none;  ">
                        <div
                                style="float: left; margin-left: 12px; line-height: 25px; font-weight: bold; color:"></div>
                        <div style="float: right; margin-right: 10px; display: none">
                            <a href="-1" style="line-height: 25px; color:">更多</a>
                        </div>
                    </div>
                    <div
                            style="padding: 0px; font: bold 13px/43px 'Microsoft YaHei', 'SimSun', Arial, Sans-Serif; color: #feab43;">

                        <c:if test="${USER!=null }">亲爱的会员，<span style="color: blue;">${USER.u_loginname }</span>你好，&nbsp;&nbsp;欢迎光临！</c:if>
                        <c:if test="${USER==null }">未登录！</c:if>
                    </div>


                </div>
            </div>
        </div>


    </div>
</div>
</div>
</div>
</body>
</html>
