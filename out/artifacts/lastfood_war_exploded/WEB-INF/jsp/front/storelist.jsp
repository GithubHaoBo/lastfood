<%@page language="java" pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>美食美客点餐系统</title>
    <meta content="" name=keywords/>
    <meta content="" name=description/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/logo.ico" type="image/x-icon"/>
    <link href="${pageContext.request.contextPath}/qiantai/css/common.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/qiantai/js/base.js"></script>--%>
    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/qiantai/js/common.js"></script>--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/qiantai/js/form.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/qiantai/js/blockui.js"></script>

</head>


<body style='background: transparent'>
<table width="900" border="0" align="center" cellpadding="0"
       cellspacing="0">
    <tr>
        <td align="left" valign="top">
            <jsp:include flush="false"
                         page="top.jsp"/>
        </td>
    </tr>
    <tr>
        <td height="30"></td>

    </tr>

    <tr>
        <td align="left" valign="top">
            <table width="100%" border="0"
                   cellspacing="0" cellpadding="0">
                <tr>
                    <td width="59%" align="left" valign="top">
                        <div id='pdv_3606'
                             class='pdv_class' title=''
                             style='width: 648px; top: 0px; left: 0px; z-index: 12'>
                            <div id='spdv_3606' class='pdv_content'
                                 style='overflow: visible; width: 100%;'>
                                <div class="pdv_border"
                                     style="margin: 0; padding: 0; height: 100%; border: 0px solid;  ">
                                    <!-- <div style="height:25px;margin:1px;display:none; ">
            <div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:"></div>
            <div style="float:right;margin-right:10px;display:none"> <a href="-1" style="line-height:25px;color:">更多</a> </div>
          </div>-->
                                    <div style="padding: 0px">
                                        <link href="${pageContext.request.contextPath}/qiantai/css/dingcanall.css"
                                              rel="stylesheet"
                                              type="text/css"/>
                                        <script src="${pageContext.request.contextPath}/qiantai/js/dingcanall.js"
                                                type="text/javascript"></script>

                                        <div id="dingcanall2">

                                            <div style="margin-top: 0px; padding: px;">

                                                <div id="mm_01" class="dingcanall_connow">
                                                    <table>

                                                        <c:forEach items="${requestScope.allstore }" var="store"
                                                                   varStatus="status">
                                                        <tr>
                                                            <td style="margin-top: 10px;">
                                                                <div>
                                                                    <table>
                                                                        <tr>
                                                                            <td rowspan="5" class="bookPic"><a
                                                                                    href="${pageContext.request.contextPath}/showindexmenubystore?s_id=${store.s_id  }"><img
                                                                                    src="${pageContext.request.contextPath}/qiantai/images/storeimg.jpg"
                                                                                    style="border: 1px solid #300; width: 150px; height: 140px"/></a>
                                                                            </td>
                                                                            <td><span>店铺名称:</span></td>
                                                                            <td>
                                                                                <span><strong>${store.s_shopname }</strong></span>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><span>店铺描述:</span></td>
                                                                            <td><span>${store.s_desc }</span>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><span>店铺热线:</span></td>
                                                                            <td><span><strong
                                                                                    style="color: red;">${store.s_phone }</strong></span>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><span>店铺邮箱:</span></td>
                                                                            <td><span>${store.s_email }</span></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><span>店铺地址:</span></td>
                                                                            <td><span>${store.s_address }</span>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        <tr>
                                                            </c:forEach>
                                                    </table>

                                                </div>


                                            </div>

                                        </div>
                                    </div>

                                    <div id="dingcanall_bottom_left">&nbsp;</div>
                                    <div id="dingcanall_bottom_right">&nbsp;</div>
                                    <input type="hidden" name="picw" id="picw" value="150"/> <input
                                        type="hidden" name="pich" id="pich" value="140"/> <input
                                        type="hidden" name="fittype" id="fittype" value="auto"/>
                                </div>
                            </div>
                        </div>
                        </div></td>
                    <td width="41%" align="right" valign="top">
                        <table width="243"
                               border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td></td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    <div id='pdv_' class='pdv_class'
                                         title='网站公告'
                                         style='width: 243px; top: 0px; left: 0px; z-index: 3'>
                                        <div id='spdv_3603' class='pdv_content'
                                             style='overflow: hidden; width: 100%; height: 100%'>
                                            <div class="pdv_border"
                                                 style="border: 0px; height: 100%; padding: 0; margin: 0; background: url() repeat-y">
                                                <div
                                                        style="height: 100%; background: url() right repeat-y">
                                                    <div
                                                            style="height: 43px; background: url(${pageContext.request.contextPath}/qiantai/images/bg.jpg) 0px 0px no-repeat">
                                                        <div
                                                                style="float: left; font: bold 16px/43px 'Microsoft YaHei', 'SimSun', Arial, Sans-Serif; text-align: left; padding-left: 50px; color: #feab43;">
                                                            最新公告
                                                        </div>
                                                        <div
                                                                style="float: right; width: 60px; height: 43px; text-align: right; background: url(${pageContext.request.contextPath}/qiantai/images/bg.jpg) -840px 0px no-repeat">
                                                        </div>
                                                    </div>
                                                    <div style="margin: 0px 3px; padding: 10px;" align="left">
                                                        <link href="${pageContext.request.contextPath}/qiantai/css/newslist_time2.css"
                                                              rel="stylesheet"
                                                              type="text/css"/>

                                                        <ul class="newslist_time2">
                                                            <c:forEach items="${allnotice }" var="notice">
                                                                <li class="newslist_time2">
                                                                    <div class="time">${notice.n_time}</div>
                                                                    <a
                                                                            href="${pageContext.request.contextPath}/notice/findnoticebynid?n_id=${notice.n_id}"
                                                                            class="newslist_time2">${notice.n_title }</a>
                                                                </li>
                                                            </c:forEach>

                                                        </ul>


                                                    </div>
                                                </div>
                                            </div>
                                            <div
                                                    style="margin-top: -10px; height: 10px; line-height: 10px; background: url(${pageContext.request.contextPath}/qiantai/images/bg.jpg) 0px -220px no-repeat">
                                                &nbsp;
                                            </div>
                                            <div
                                                    style="float: right; margin-top: -10px; width: 10px; height: 10px; line-height: 10px; background: url(${pageContext.request.contextPath}/qiantai//bg.jpg) -890px -220px no-repeat">
                                                &nbsp;
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td height="10">&nbsp;</td>
                            </tr>
                            <%--餐车--%>
                            <tr>
                                <td valign="top">
                                    <div id='pdv_3614' class='pdv_class' title='我的餐车'
                                         style='width: 243px; top: 0px; left: 0px; z-index: 2'>
                                        <div id='spdv_3614' class='pdv_content'
                                             style='overflow: visible; width: 100%;'>
                                            <div class="pdv_border"
                                                 style="margin: 0; padding: 0; height: 100%; border: 0px solid;  ">
                                                <div
                                                        style="height: 25px; margin: 1px; display: none;  ">
                                                    <div
                                                            style="float: left; margin-left: 12px; line-height: 25px; font-weight: bold; color:">
                                                        我的餐车
                                                    </div>
                                                    <div
                                                            style="float: right; margin-right: 10px; display: none">
                                                        <a href="-1" style="line-height: 25px; color:">更多</a>
                                                    </div>
                                                </div>
                                                <div style="padding: 0px">
                                                    <link href="${pageContext.request.contextPath}/qiantai/css/dingcanche.css"
                                                          rel="stylesheet"
                                                          type="text/css"/>
                                                    <script src="${pageContext.request.contextPath}/qiantai/js/dingcanall.js"
                                                            type="text/javascript"></script>
                                                    <script src="${pageContext.request.contextPath}/qiantai/js/dingcansubmit.js"
                                                            type="text/javascript"></script>
                                                    <div id="dingcanche">
                                                        <div id="dingcanche2">
                                                            <div id="dingcanche_top">
                                                                <div id="dingcanche_top_left">我的餐车</div>
                                                                <div id="dingcanche_top_right">&nbsp;</div>
                                                            </div>


                                                            <div id="dcinfo" style="margin: 0px 3px 1px 3px;"></div>
                                                            <table width="100%" border="0" cellspacing="0"
                                                                   style="background: #fef0d3;">
                                                                <tr>
                                                                    <td align="center">餐品名称</td>
                                                                    <td align="center">单价</td>
                                                                    <td align="center">数量</td>
                                                                    <td align="center"></td>
                                                                </tr>

                                                                <c:forEach items="${shoppingCart.map }" var="item">

                                                                    <!-- 计算份数 -->
                                                                    <c:set value="${item.value.sums+sumTotal }"
                                                                           var="sumTotal"></c:set>
                                                                    <!-- 计算总价 -->
                                                                    <c:set
                                                                            value="${item.value.price*item.value.sums+total }"
                                                                            var="total"></c:set>
                                                                    <tr>
                                                                        <td align="center">${item.value.menuname }</td>
                                                                        <td align="center">￥${item.value.price }</td>
                                                                        <td align="center">${item.value.sums }</td>
                                                                        <td align="center"><a
                                                                                href="${pageContext.request.contextPath}/cart/delfromcart?menuname=${item.value.menuname }&path=index">取消</a>
                                                                        </td>
                                                                    </tr>

                                                                </c:forEach>

                                                            </table>

                                                            <div style="height: 24px; margin: 5px 3px 1px 3px;">
                                                                <div
                                                                        style="float: left; line-height: 24px; padding-left: 25px;">
                                                                    小&nbsp;&nbsp;计：
                                                                </div>
                                                                <div
                                                                        style="float: right; line-height: 24px; padding-right: 15px;">
                                                                    <font id="allnums"
                                                                          style="color: #ff0000;">${empty sumTotal?0:sumTotal }</font>份
                                                                </div>
                                                                <div
                                                                        style="float: right; line-height: 24px; padding-right: 30px;">
                                                                    <font id="cpprice"
                                                                          style="color: #ff0000;">${empty total?0.0:total }</font>元
                                                                </div>
                                                            </div>
                                                            <div style="height: 30px; margin: 5px 3px 1px 3px;">
                                                                <table width="100%" border="0" cellspacing="0">
                                                                    <tr>
                                                                        <td align="center" width="40%"></td>
                                                                        <td align="center" width="40%"><a
                                                                                href="${pageContext.request.contextPath}/cart/addorder?path=index&amount=${total}"><img
                                                                                src="${pageContext.request.contextPath}/qiantai/images/canche_submit.gif"
                                                                                border="0"/></a></td>
                                                                        <td align="center" width="40%"><a
                                                                                href="${pageContext.request.contextPath}/cart/clearcart?path=index"><img
                                                                                src="${pageContext.request.contextPath}/qiantai/images/quxiao2.gif"
                                                                                border="0"/></a></td>
                                                                    </tr>
                                                                </table>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="dingcanche_bottom_left">&nbsp;</div>
                                                <div id="dingcanche_bottom_right">&nbsp;</div>
                                                <input type="hidden" name="modnums_b" id="modnums_b"
                                                       value=""/>
                                                <script>
                                                    $("div.cpline_d:even")
                                                        .addClass(
                                                            "cpline_s");
                                                </script>
                                            </div>
                                        </div>
                                    </div>
                                    </div>

                                </td>
                            </tr>
                            <tr>
                                <td height="10">&nbsp;</td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    <div id='pdv_3613' class='pdv_class'
                                         title='本周菜单'
                                         style='width: 243px; top: 0px; left: 0px; z-index: 5'>
                                        <div id='spdv_3613' class='pdv_content'
                                             style='overflow: hidden; width: 100%; height: 100%'>
                                            <div class="pdv_border"
                                                 style="margin: 0; padding: 0; height: 100%; border: 0px solid;  ">
                                                <div
                                                        style="height: 25px; margin: 1px; display: none;  ">
                                                    <div
                                                            style="float: left; margin-left: 12px; line-height: 25px; font-weight: bold; color:">
                                                        本周菜单
                                                    </div>
                                                    <div
                                                            style="float: right; margin-right: 10px; display: none">
                                                        <a href="-1" style="line-height: 25px; color:"></a>
                                                    </div>
                                                </div>
                                                <div style="padding: 0px">
                                                    <link href="${pageContext.request.contextPath}/qiantai/css/dingcanweekmenu.css"
                                                          rel="stylesheet"
                                                          type="text/css"/>
                                                    <div id="dingcanweekmenu">
                                                        <div id="dingcanweekmenu2">
                                                            <div id="dingcanweekmenu_top">
                                                                <div id="dingcanweekmenu_top_left">销售排行榜</div>
                                                                <div id="dingcanweekmenu_top_right">&nbsp;</div>
                                                            </div>
                                                            <div style="padding: px;">
                                                                <div class="dingcanweekmenuinfo" align="left">
                                                                    <link href="${pageContext.request.contextPath}/qiantai/css/newslist_time2.css"
                                                                          rel="stylesheet"
                                                                          type="text/css"/>


                                                                    <c:forEach items="${topmenu }" var="top">

                                                                        <li class="newslist_time2">
                                                                            <div class="time">销量${top.m_sales }份</div>
                                                                            <a
                                                                                    href="${pageContext.request.contextPath}/menu/findmenubymid?m_id=${top.m_id  }"
                                                                                    class="newslist_time2">${top.m_name }</a>
                                                                        </li>

                                                                    </c:forEach>


                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="dingcanweekmenu_bottom_left"></div>
                                                    <div id="dingcanweekmenu_bottom_right">&nbsp;</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td height="10">&nbsp;</td>
    </tr>
    <tr>
        <td height="50" align="center" valign="middle">
            <jsp:include
                    flush="false" page="copyright.jsp"/>
        </td>
    </tr>

</table>


</body>
</html>
