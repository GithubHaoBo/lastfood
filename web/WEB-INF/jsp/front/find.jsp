<%@page language="java" pageEncoding="utf-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户查询</title>
    <meta content="" name=keywords/>
    <meta content="" name=description/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/logo.ico" type="image/x-icon"/>
    <link href="${pageContext.request.contextPath}/qiantai/css/common.css" rel="stylesheet" type="text/css"/>
    <style>
        .find-input {
            width: 400px;
            height: 40px;
            border: 2px solid #F59D5E;
            font-size: 20px;
            border-radius: 5px;
            color: #999;
            padding-left: 20px;
        }

        .find-submit {
            width: 100px;
            height: 43px;
            border: 0;
            background-color: #EF6908;
            border-radius: 5px;
            font-size: 15px;
            font-weight: 700;
            color: white;
        }
    </style>
</head>


<%--<script type="text/javascript" src="${pageContext.request.contextPath}/qiantai/js/common.js"></script>--%>


<body>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td align="left" valign="top">


            <jsp:include flush="false" page="top.jsp"/>

        </td>
    </tr>
    <tr>
        <td height="50"></td>

    </tr>

    <tr>
        <td align="center" valign="top" height="400">

            <table border="0" cellspacing="0" width="100%">

                <tr>
                    <td align="center" vlign="top">
                        <strong><span style="font-family: Helvetica, sans-serif;font-size: 25px;">
			       用户查询
			 </span></strong>
                        <br>
                    </td>
                </tr>

                <tr>
                    <td align="center" vlign="top">
                        <p style=" font-size: 20px;">
                            <br>
                        <form action="${pageContext.request.contextPath}/showindexbyname" method="post">
                            <input class="find-input" type="text" name="m_name">
                            <input class="find-submit" type="submit" value="查询餐品">
                        </form>
                        <img width="150px" height="150px"
                             src="${pageContext.request.contextPath}/qiantai/images/menuimg.jpg">
                        <br><br>
                        <form action="${pageContext.request.contextPath}/showindexbystore" method="post">
                            <input class="find-input" type="text" name="s_shopname">
                            <input class="find-submit" type="submit" value="查询商家">
                        </form>
                        <img width="150px" height="150px"
                             src="${pageContext.request.contextPath}/qiantai/images/storeimg.jpg">
                        <br><br>
                        </p>

                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <a href="${pageContext.request.contextPath}/showindex" target="_self">
			 <span style="font-family: Helvetica, sans-serif;font-size: 16px;">
			     返回
			 </span></a>
                    </td>
                </tr>
            </table>


        </td>
    </tr>
    <tr>
        <td height="10">&nbsp;</td>
    </tr>
    <tr>
        <td height="50" align="center" valign="middle">&nbsp;

            <jsp:include flush="false" page="copyright.jsp"/>
        </td>
    </tr>

</table>


</body>
</html>
