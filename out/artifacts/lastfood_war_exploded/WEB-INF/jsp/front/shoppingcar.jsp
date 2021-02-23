<%@ page language="java" import="java.util.*,java.text.*"
         pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>-我的订餐车</title>
    <meta content="" name=keywords/>
    <meta content="" name=description/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/logo.ico" type="image/x-icon"/>
    <link href="${pageContext.request.contextPath}/qiantai/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/qiantai/css/skin.css" rel="stylesheet" type="text/css"/>
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
        <td height="50px"></td>

    </tr>

    <tr>
        <td align="center" valign="top" height="420px">

            <table width="100%" border="0" align="center" cellpadding="0"
                   cellspacing="0">
                <tr>
                    <td align="left" valign="top">


                        <div align="center">
                            <table id="table2" class="line_table"
                                   style="width: 700px; margin: 0; padding: 0" cellSpacing="0"
                                   cellPadding="0">
                                <tbody style="margin: 0; padding: 0">
                                <tr>
                                    <td class="line_table" align="center" colspan="4"><span
                                            class="left_bt2">我的订餐信息列表</span></td>
                                </tr>
                                <tr>
                                    <td class="line_table" align="center" width="40%"><span
                                            class="left_bt2">餐品名称</span></td>
                                    <td class="line_table" align="center" width="20%"><span
                                            class="left_bt2">单价</span></td>
                                    <td class="line_table" align="center" width="20%"><span
                                            class="left_bt2">数量</span></td>
                                    <td class="line_table" align="center" width="20%"><span
                                            class="left_bt2">&nbsp;操作&nbsp;</span></td>
                                </tr>
                                <c:forEach items="${shoppingCart.map }" var="item">

                                <!-- 计算份数 -->
                                    <c:set value="${item.value.sums+sumTotal }" var="sumTotal"></c:set>
                                <!-- 计算总价 -->
                                    <c:set value="${item.value.price*item.value.sums+total }"
                                           var="total"></c:set>
                                <tr>
                                    <td class="line_table" align="center" width="40%"><span
                                            class="left_txt">${item.value.menuname }</span></td>
                                    <td class="line_table" align="center" width="20%"><span
                                            class="left_txt">${item.value.price }</span></td>
                                    <td class="line_table" align="center" width="20%"><span
                                            class="left_txt">${item.value.sums }</span></td>
                                    <td class="line_table" align="center" width="20%"><a
                                            href="${pageContext.request.contextPath}/cart/delfromcart?menuname=${item.value.menuname }">取消</a>
                                    </td>
                                </tr>
                                </c:forEach>

                                <tr>
                                    <td class="line_table" align="center" colspan="4"><span
                                            class="left_bt2">小&nbsp;&nbsp;计：</span>&nbsp; <span
                                            style="color: #ff0000;">${empty total?0.0:total }</span>&nbsp;&nbsp;
                                        <span class="left_bt2">元</span>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <span class="left_bt2">共：</span>&nbsp; <span
                                                style="color: #ff0000;">${empty sumTotal?0:sumTotal }</span>&nbsp;
                                        <span class="left_bt2">份</span></td>

                                </tr>

                                <tr>
                                    <td class="line_table" align="center" colspan="4"
                                        valign="center"><a href="${pageContext.request.contextPath}/cart/addorder?amount=${total}"><img
                                            src="${pageContext.request.contextPath}/qiantai/images/canche_submit.gif"
                                            border="0"/></a>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                        <a href="${pageContext.request.contextPath}/cart/clearcart"><img
                                                src="${pageContext.request.contextPath}/qiantai/images/quxiao2.gif"
                                                border="0"/></a></td>

                                </tr>
                            </table>
                        </div>


                    </td>
                </tr>
            </table>


        </td>
    </tr>
    <tr>
        <td height="10px">&nbsp;</td>
    </tr>
    <tr>
        <td height="50px" align="center" valign="middle">
            <jsp:include
                    flush="fasle" page="copyright.jsp"/>
        </td>
    </tr>

</table>


</body>
</html>
