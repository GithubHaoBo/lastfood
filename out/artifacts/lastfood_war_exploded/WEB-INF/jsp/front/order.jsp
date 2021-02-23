<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=7"/>
    <title>我的订单</title>
    <meta content="" name=keywords/>
    <meta content="" name=description/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/logo.ico" type="image/x-icon"/>
    <link href="${pageContext.request.contextPath}/qiantai/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/qiantai/css/skin.css" rel="stylesheet" type="text/css"/>
    <script src="${pageContext.request.contextPath}/qiantai/js/date.js" type="text/javascript"></script>
</head>

<body style='background:transparent'>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td align="left" valign="top">


            <jsp:include flush="false" page="top.jsp"/>

        </td>
    </tr>
    <tr>
        <td height="50px"></td>

    </tr>

    <tr>
        <td align="center" valign="top" height="420px">

            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td align="left" valign="top">

                        <div align="center" width="120">
                            <form action="#" name="form1" method="post">
                                <table id="table1" class="line_table" style="width: 500px;  margin: 0; padding: 0"
                                       cellSpacing="0" cellPadding="0">
                                    <tbody style="margin: 0; padding: 0">


                                    <tr>
                                        <td class="line_table" align="center" width="40%"><span
                                                class="left_bt2">点击查询订单：</span></td>
                                        <td class="line_table" align="left" width="60%"> &nbsp; &nbsp;
                                            <input type="text" name="content" size="20">
                                            <input type="submit" value="查询"
                                                   formaction="${pageContext.request.contextPath}/order/userquerylist">
                                        </td>
                                    </tr>

                                </table>
                            </form>
                        </div>


                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top" height="20px"></td>
                </tr>
                <tr>
                    <td align="left" valign="top">


                        <div align="center">
                            <table id="table2" class="line_table" style="width: 900px; margin: 0; padding: 0"
                                   cellSpacing="0" cellPadding="0">
                                <tbody style="margin: 0; padding: 0">
                                <tr>
                                    <td class="line_table" align="center" colspan="10">
                                        <span class="left_bt2">订单查询结果信息列表</span></td>
                                </tr>
                                <tr>
                                    <td class="line_table" align="center"><span class="left_bt2">订单号</span></td>
                                    <td class="line_table" align="center"><span class="left_bt2">订餐用户</span></td>
                                    <td class="line_table" align="center"><span class="left_bt2">订购电话</span></td>
                                    <td class="line_table" align="center"><span class="left_bt2">送餐地址</span></td>
                                    <td class="line_table" align="center"><span class="left_bt2">餐品名称</span></td>
                                    <td class="line_table" align="center"><span class="left_bt2">餐品数量</span></td>
                                    <td class="line_table" align="center"><span class="left_bt2">餐品单价</span></td>
                                    <td class="line_table" align="center"><span class="left_bt2">订单总价</span></td>
                                    <td class="line_table" align="center"><span class="left_bt2">订单时间</span></td>
                                    <td class="line_table" align="center"><span class="left_bt2">接单情况</span></td>
                                </tr>
                                <c:forEach items="${orderlist }" var="order">
                                <td class="line_table" align="center"><span
                                        class="left_txt">${order.o_no}</span>
                                </td>
                                <td class="line_table" align="center"><span
                                        class="left_txt">${order.user.u_fullname}</span>
                                </td>
                                <td class="line_table" align="center"><span
                                        class="left_txt">${order.user.u_phone}</span>
                                </td>
                                <td class="line_table" align="center"><span
                                        class="left_txt">${order.user.u_address }</span></td>
                                <td class="line_table" align="center"><span
                                        class="left_txt">${order.menu.m_name }</span>
                                </td>
                                <td class="line_table" align="center"><span class="left_txt">${order.m_num }</span>
                                </td>
                                <td class="line_table" align="center"><span
                                        class="left_txt">${order.menu.m_price }</span>
                                </td>
                                <td class="line_table" align="center"><span
                                        class="left_txt">${order.m_num * order.menu.m_price}</span></td>
                                <td class="line_table" align="center"><span class="left_txt">${order.o_time }</span>
                                </td>
                                <td class="line_table" align="center"><span
                                        class="left_txt">${order.o_state==0?"未接单":"已接单" }</span>
                                </td>
                                </tr>
                                </c:forEach>

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

            <jsp:include flush="false" page="copyright.jsp"/>
        </td>
    </tr>

</table>


</body>
</html>
