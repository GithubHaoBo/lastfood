<%@ page language="java" import="java.util.*,java.text.*"
         pageEncoding="gb2312" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <meta http-equiv="X-UA-Compatible" content="IE=7"/>
    <title>���¹���</title>
    <meta content="" name=keywords/>
    <meta content="" name=description/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/logo.ico" type="image/x-icon"/>
    <link href="${pageContext.request.contextPath}/qiantai/css/common.css" rel="stylesheet" type="text/css"/>

</head>


<%--<script type="text/javascript" src="${pageContext.request.contextPath}/qiantai/js/common.js"></script>--%>


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
        <td align="center" valign="top" height="400">

            <table border="0" cellspacing="0" width="100%">


                <tr>
                    <td align="center" vlign="top"><strong><span
                            style="font-family: Helvetica, sans-serif; font-size: 20px;">${notice.n_title }</span></strong>
                        <br><span style="font-size: 10px;">�������ƣ�${noticeStore.s_shopname }</span> <span style="font-size: 10px;">����ʱ�䣺${notice.n_time }</span></td>
                </tr>
                <tr>
                    <td align="center" vlign="top"><span
                            style="font-size: 14px;"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${notice.n_content }
						</span><br>
                        <br></td>
                </tr>
                <tr>
                    <td align="center" vlign="top">
                        <img style="width: 300px;height: 250px;"
                             src="${pageContext.request.contextPath}/imgnotice/${notice.n_imgname}">
                    </td>
                </tr>
                <tr>
                    <td align="center"><a href="${pageContext.request.contextPath}/showindex" target="_self">
								<span
                                        style="font-family: Helvetica, sans-serif; font-size: 16px;">
									���� </span>
                    </a></td>
                </tr>
            </table>


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
