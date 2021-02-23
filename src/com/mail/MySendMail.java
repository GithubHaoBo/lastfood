package com.mail;

import com.bean.Employee;
import com.bean.Store;
import com.util.FormatDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

import javax.mail.internet.MimeMessage;
import java.util.Date;

@Component
public class MySendMail {

    @Autowired
    private JavaMailSender javaMailSender;

    public void sendMail(Employee employee, Store store) throws Exception {
        MimeMessage message = javaMailSender.createMimeMessage();
        //处理中文
        MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
        messageHelper.setFrom(store.getS_email());//来自商户管理员的邮箱
        messageHelper.setSubject("入职信息");//邮件标题
        messageHelper.setTo(employee.getE_email());
        messageHelper.setText("恭喜"+employee.getE_name()+"，您于"+ FormatDate.formateDate1(new Date())+"起，正式成为“"+store.getS_shopname()+"”内的一名员工，请一周之内前来报道", true);//邮件内容
        javaMailSender.send(message);
    }

}
