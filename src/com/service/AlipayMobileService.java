package com.service;

import com.alibaba.fastjson.JSON;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.api.request.AlipayTradeWapPayRequest;
import com.config.AlipayMobileConfig;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Service
public class AlipayMobileService {


    //    支付服务
    public String aliPay(String amount) throws AlipayApiException {

        // 构建支付数据信息
        Map<String, String> data = new HashMap<>();
        data.put("subject", "SHOPPING"); //订单标题
        data.put("out_trade_no", new SimpleDateFormat("yyyyMMddhhmmss").format(new Date())); //商户订单号,64个字符以内、可包含字母、数字、下划线；需保证在商户端不重复      //此处模拟订单号为时间
        data.put("timeout_express", "10m"); //该笔订单允许的最晚付款时间
        data.put("total_amount", amount); //订单总金额，单位为元，精确到小数点后两位，取值范围[0.01,100000000]
        data.put("product_code", "FAST_INSTANT_TRADE_PAY"); //销售产品码，商家和支付宝签约的产品码，为固定值QUICK_MSECURITY_PAY


        //构建客户端
        AlipayClient alipayRsa2Client = new DefaultAlipayClient(
                AlipayMobileConfig.gatewayUrl,
                AlipayMobileConfig.app_id,
                AlipayMobileConfig.merchant_private_key,
                "json",
                AlipayMobileConfig.charset,
                AlipayMobileConfig.alipay_public_key,
                AlipayMobileConfig.sign_type);

//        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();  // 网页支付
        AlipayTradeWapPayRequest alipayRequest = new AlipayTradeWapPayRequest();  //移动h5
        alipayRequest.setNotifyUrl(AlipayMobileConfig.notify_url);
        alipayRequest.setReturnUrl(AlipayMobileConfig.return_url);

//        表单参数
        alipayRequest.setBizContent(JSON.toJSONString(data));
        System.out.println("表单参数："+ JSON.toJSONString(data)+"-----------");
        String result = alipayRsa2Client.pageExecute(alipayRequest).getBody();
        System.out.println("页面渲染："+result+"-----------");
        return result;
    }
}
