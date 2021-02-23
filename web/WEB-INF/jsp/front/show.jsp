<%@ page language="java" import="java.util.*,java.text.*"
         pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<title>菜品展示</title>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

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
        <td height="50"></td>

    </tr>

    <tr>
        <td align="center" valign="center" height="450">


            <div align="center">


                <table id="table2" class="line_table"
                       style="width: 100%; margin: 0; padding: 0;broder:0" cellSpacing="0"
                       cellPadding="0">


                    <tr>
                        <td class="line_table" height="25" align="right" width="20%"><span
                                class="left_bt2">餐品名称：</span></td>
                        <td class="line_table" height="25" width="70%"><input
                                type="text" name="name" size="45" readonly
                                value="${menus.m_name }"></td>
                    </tr>
                    <tr>
                        <td class="line_table" height="25" align="right" width="20%"><span
                                class="left_bt2">原&nbsp;&nbsp;&nbsp; 料：</span></td>
                        <td class="line_table" height="25" width="80%"><input
                                type="text" name="burden" size="45" readonly
                                value="${menus.m_burden }"></td>
                    </tr>
                    <tr>
                        <td class="line_table" height="25" align="right" width="20%"><span
                                class="left_bt2">店铺：</span></td>
                        <td class="line_table" height="25" width="80%"><input type="text" name="price"
                                                           size="45" readonly value="${menus.store.s_shopname }"></td>
                    </tr>
                    <tr>
                        <td class="line_table" height="25" align="right" width="20%"><span
                                class="left_bt2">餐品单价：</span></td>
                        <td class="line_table" height="25" width="80%"><input type="text" name="price1"
                                                           size="45" readonly value="${menus.m_price }"></td>
                    </tr>
                    <tr>
                        <td class="line_table" height="25" align="right" width="20%"><span
                                class="left_bt2">说&nbsp;&nbsp;&nbsp; 明：</span></td>
                        <td class="line_table" height="25" width="80%"><textarea
                                rows="8" name="brief" cols="100" readonly>${menus.m_desc }</textarea></td>
                    </tr>
                    <tr>
                        <td class="line_table" height="25" align="right" width="20%"><span
                                class="left_bt2">餐品类别：</span></td>
                        <td class="line_table" height="25" width="80%"><input
                                type="text" name="type" size="45" readonly
                                value="${menus.category.c_name }"></td>
                    </tr>
                    <tr>
                        <td class="line_table" height="25" align="right" width="20%"><span
                                class="left_bt2">餐品销量：</span></td>
                        <td class="line_table" height="25" width="80%"><input
                                type="text" name="type" size="45" readonly
                                value="${menus.m_sales }"></td>
                    </tr>
                    <tr>
                        <td class="line_table" align="right" width="20%"><span
                                class="left_bt2">展示图片</span>：
                        </td>
                        <td class="line_table" width="80%" align="left"><img
                                src="${pageContext.request.contextPath}/imgmenu/${menus.m_imgname }"
                                style="width: 150px; height: 140px"/></td>
                    </tr>

                    <tr>
                        <td class="line_table" height="25" align="center" colspan="2">
                            <a href="${pageContext.request.contextPath}/showindex" target="_self"><input type="submit"
                                                                                                         value="返回"></a>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2" class="line_table" height="25" align="center" style="border: none"><span
                                class="left_bt2">评 &nbsp;&nbsp;&nbsp; 价</span></td>
                    </tr>
                    <c:forEach items="${pinglist }" var="pinglun">
                    <tr>
                        <td class="line_table" height="25" align="right" width="20%"><span
                                class="left_bt2">评论用户&#10;[${pinglun.user.u_loginname}]：</span></td>
                        <td class="line_table" height="25" width="80%" align="right"><textarea
                                rows="2" name="brief" cols="100" align="left" readonly>${pinglun.p_content }</textarea>
                            <span align="right">评论时间：${pinglun.p_time}</span>
                        </td>
                    </tr>
                    </c:forEach>
                    <tr>
                        <td class="line_table" height="25" align="right" width="20%"><span
                                class="left_bt2">发表评价：</span></td>

                        <form action="${pageContext.request.contextPath}/pinglun/add" method="post">
                            <td class="line_table" height="25" width="80%"  align="right"><textarea  align="left"
                                    rows="2" name="p_content" cols="100"></textarea>
                                <input type="submit" value="发表评论">
                                <input type="hidden" name="m_id" value="${menus.m_id}">
                            </td>
                        </form>
                    </tr>


                </table>

            </div>


        </td>
    </tr>
    <tr>
        <td height="10">&nbsp;</td>
    </tr>
    <tr>
        <td height="50" align="center" valign="middle">&nbsp;
            <jsp:include
                    flush="false" page="copyright.jsp"/>
        </td>
    </tr>

</table>


</body>
</html>
