<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="gb2312" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>配送说明</title>
    <meta content="" name=keywords/>
    <meta content="" name=description/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/logo.ico" type="image/x-icon"/>
    <link href="${pageContext.request.contextPath}/qiantai/css/common.css" rel="stylesheet" type="text/css"/>

</head>


<script type="text/javascript" src="${pageContext.request.contextPath}/qiantai/js/common.js"></script>


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
        <td align="center" valign="top" height="250">

            <table border="0" cellspacing="0" width="100%">

                <tr>
                    <td align="center" vlign="top">
                        <strong><span style="font-family: Helvetica, sans-serif;font-size: 20px;">
			       配送指南
			 </span></strong>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td align="left" vlign="top">
                        <p style=" font-size: 14px;">

                            &nbsp;&nbsp;&nbsp;&nbsp;本平台已与第三方配送平台加盟，当您提交订单完毕，在商户接单后，可联系以下配送平台，帮您从店铺领取餐品并配送到你们的手中。

                        </p>
                        <p style=" font-size: 14px;">
                            <br><br>
                            <strong>UU跑腿：</strong><span>UU跑腿是国内最快的同城速递服务平台，同城快递，同城闪送，叫UU跑腿，专人直送，60分钟送达全城！24小时在线为用户提供服务。UU跑腿给您提供最优质的快服务。【产品特色】当你有急件需求时，UU跑腿平台将自动计算出离你最近的跑男，将您的订单信息推送给跑男，跑男会迅速上门取货，把货物送达目的地。同城速递，10分钟上门取件，59分钟送达全城！</span>
                            <br><br>
                            <strong>嗖嗖跑腿：</strong><span>嗖嗖跑腿软件是当前全民首选的综合性生活服务类应用，因为它适合每一位有服务需求和提供服务的手机用户。如果您是一位工作繁忙的用户，可以在应用里发布任务，平台能快速的匹配最优质的跑腿人员帮您解决耗时或您不擅长的生活琐事；如果您是一位有闲暇时间和服务能力的人，可以在平台上接收到有趣的任务来赚取外快！</span>
                            <br><br>
                            <strong>闪送：</strong><span>闪送是国内最快的同城速递服务公司，专人直送，60分钟送达全城！24小时在线为用户提供同城急件，蛋糕，鲜花，生鲜，水果等限时递送服务。【闪送特色】　　1、随时下单，即刻上门：无论何时何地，无需预约，闪送同城快递24小时静候您的召唤。　　2、安全便捷，专人直送：闪送员即取即送，配送无中转环节，直达目的地，全程实时监控，先行赔付保障机制。　　3、同城1小时，极速送达：5公里平均23分钟送达，10公里平均33分钟送达，15公里平均39分钟送达。</span>
                            <br><br>
                            <strong>飞毛跑腿：</strong><span>飞毛跑腿是基于定位功能的移动互联网+跑腿服务类平台，以时效、安全、便捷的方式提供同城60分钟速达跑腿服务；用户可通过微信或APP发起代取、代送、代买等服务类需求。</span>
                            <br><br>
                            <strong>达达快送：</strong><span>达达快送是达达集团旗下中国领先的本地即时配送平台。公司秉承“达达，使命必达”的信念，专注于用移动和众包的方式解决O2O领域最大的痛点：本地商户的最后3公里配送。达达平台通过需求和供给的对接，使商家的配送需求和富余劳动力资源充分匹配。一方面，为本地商户和O2O平台解决最大的痛点之一：同城即时配送；另一方面，充分利用和调动社会闲散资源，带动就业的同时极大提升了社会效率。</span>
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
