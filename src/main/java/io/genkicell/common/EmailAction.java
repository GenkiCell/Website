package io.genkicell.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import io.genkicell.utils.PwdMailSender;

@Controller
public class EmailAction {
	
	@Autowired
	private PwdMailSender pwdMailSender;

	@RequestMapping("{email}/sendemail.do")
	public String sendEmail(@PathVariable("email") String emali) {
		
		System.out.println("email.do");
		
		pwdMailSender.send("浩彤", "验证码为", emali);
		return "home";
	}
}
