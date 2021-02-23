package com.controller.mobile;

import com.service.AlipayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/mobile")
public class AlipayMobileController {

    @Autowired
    AlipayService alipayService;


//    支付接口
//    @RequestMapping(value = "/alipay/topay", method = RequestMethod.GET)
//    @ResponseBody
//    public String alipay(@RequestParam(name = "amount") String amount) throws AlipayApiException {
//        return alipayService.aliPay(amount);
//    }

//    支付异步通知接口
    @RequestMapping("/alipay/notify_url")
    @ResponseBody
    public String notifyAlipay() {

        System.out.println("----notify-----");
        return " mobile a li pay notify ";
    }

//    支付回调接口
    @RequestMapping("/alipay/return_url")
    public String returnAlipay() {
        System.out.println("----return-----");
        return "mobile/order";
    }

}
