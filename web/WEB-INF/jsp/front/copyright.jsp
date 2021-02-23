<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta content="" name=keywords />
<meta content="" name=description />
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/logo.ico" type="image/x-icon"/>
<link href="${pageContext.request.contextPath}/qiantai/css/common.css" rel="stylesheet" type="text/css" />

</head>
<body style='background:transparent'>
    
  <!-- 底部信息编辑区 -->

<link href="${pageContext.request.contextPath}/qiantai/css/A.css" rel="stylesheet" type="text/css" />
<div id="bottommenu">

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top">
      |<a href="${pageContext.request.contextPath}/front/toour" target="_self">关于我们</a>|
    
    </td>
  </tr>
  <tr>
    <td align="center" valign="top">
    <span > Copyright(C)2019-2020</span></td>
  </tr>
</table>
</div>


</body>
</html>
