package com.config;

import org.springframework.context.annotation.Configuration;

import java.io.FileWriter;
import java.io.IOException;

public class AlipayConfig {
    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016102400752623";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCsg7BgqXG9ALEOfyLNDSTqC2wZg5QbRta5f3yYtNqn6P2L2XdBOdHAqE+dAJxdAseYxrg0HmEmKqmhRvnYfh8Laqv3hg8Td/hzG4T/hwy8w975OSk/xuxDyOcGozGWH0LNgmryLoDsySLpJsHFbNp833nf9cknrVeY0TJ6Kf9spoiZ2pjmkHkX9ZDkBGi3De2A6bK1OXpJQXKLm715SDCu7NCzuxZHuSDYsl7pt1QDL2DOV1qtbsHaBhJF0rmbHU6S3oFmvPzbWVZ+59GAnzhxCZ3Un0ZbG7UXJ6hyPoOC0baxMu97Fay10SH7YzGUnzdhQBTnkHyafqWERcQo2PmxAgMBAAECggEBAKTDzbQ0gZXzUCe5U4KmWChUqnUfz1fR64kVcuniaafPBkIIfDbGw0ePOSKJj83htsJ6oTnd/glW29ZWFJApvPrJcd8hocqFXbyKfxcSZB7xsEc1yejI06TV/5i+SsDHsKTZN82AjtAYNoiZ5J3rni1/v0Yg2HNVwoEI5H37GKIqRTy8bPrX1BWY0F98vdLqkVaotJXQQYR8j1YRMoRRt9D6X69OBk+uGovx/gxD2u1y25JbGeR0kEp/glCAa+RqUkPCMkcidjYY+SsY5EWFcmksqKyxyZeXlUcZV7C2CTdleLPEm0sO42+bkC2Vjtr6W8/LQ/WdoTWywsfmghORhAECgYEA46VCZOPL1j319/xin0oNu8y5nzCy0+oWXRDaQy0/yllb+BszhpBH4OcVEJ1rKmMJ6/yG3a38Nvv0eYdx07a0/Ol9v/CFl/h/thRbSgIDt6DYEovbsblZSwXP0i+K9RkoS+Y+GsKJd70hLIRgDvGfenWEJEIeC3qYzmy0UfG0n8ECgYEAwgCChQTF4CyKnyxlLmL/0zSZQWzCmCsk7vMwdZEjnhjtjsD0l4aCSqFr29tqkPS9J76JMBKMr6wekyDPwfNiRoEHcKTLG6ykQZl0t16RdWh059RRcj8U054SB/oyTp/qcC6s5sAneGZas40df0E1UAfEHvDEwZeiXvsY2d2j1fECgYEAuI5mgXzc6Nha7a3EFvfmonablp/Ym02Qy+q5yPSKXvaLRV5oK5QVchRmU44ML9UTWirk/Bvt+nXSAiT493eMy+5QcKgC5u4kO+3NBPcVJG5WPtL8Td3CsrwHfJPmyEaZEM+dUfydjmHa30iCyBrD/HgBpZOk4BGIiPJATp7ynQECgYEAgQ1txabjKrj2jeQueqkInSsEN+1tlWQ98WZ8+fhOxUC35pqdGp8z1QmEgoB3Z24m1mV9RSlRxRquTBkrm02YNmZm2JwHMKWrrqeyaLjT8lJGUmF+vI0SAaPJQt1A0eS3Q2EJS4bPutv7wi1BTgHGwTIpWJu5hz6jmKNYaLVz40ECgYAZDlJNdBJs8ZJ52sYLyZgn6bnPcMVuXO9vbeRZSNpPJ7SSfdhuqtOt8leDpV4J3BEqplsJ/gGwjCHBAyZstc//k0INY7+2q6l5aj9DZmg+n31BfAlKuxNdLeWzwJQDJsqWLFqTEn6sVpZCe8DChFZgmVUJ89CryLptGI0HHlGrTw==";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAh6kEPDV6wVC9I5U/gzXt+dIeUP+HophNm18y96ELYEXtEmblu18tonroyjB5ggSQXiR0Fg7VKYZ769WFpmtT6O68KKbx8ZYvM3fDkfJw1OgM23DgjB70IW74v9gt62gAHdnyLsupA+Ndqt4mtXkw60sSa4CFYM9f+klY/Hx0nMQelISGF0Izj9ukiL0V9nGxuqDyfdXfyBnskK+7kpm75NDfsSLRDdK4jul88xx03s9p0ozLJjaKt/qz/MD9BK83DrgoGJ90IFxxotXJYbzJ4lRrt/DjrcaDSZL3zaN+cTgNyLeP3k4qKunZF+ksT18Uq440q1U5zv5inb08Da5rjwIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://localhost:8086/alipay/notify_url";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://localhost:8086/alipay/return_url";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝日志
    public static String log_path = "F:\\";

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     *
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis() + ".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

}
