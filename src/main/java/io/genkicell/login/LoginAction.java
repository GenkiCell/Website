package io.genkicell.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import io.genkicell.pojo.User;
import io.genkicell.service.UserService;
import io.genkicell.utils.PwdMailSender;
import io.genkicell.utils.VerifyCodeUtils;

@Controller
public class LoginAction {

	public static final String REGEX_EMAIL = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
	
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private PwdMailSender pwdMailSender;

	@RequestMapping("login.do")
	public String login(HttpServletRequest request, HttpServletResponse respose, User user) {
		String header = request.getHeader("Referer");

		User existUser = userService.login(user);
		System.out.println(existUser);
		return header;
	}

	public String regist(HttpServletRequest request, HttpServletResponse respose, String username, String password) {
		// 1.获取redis中的验证码

		// 2.验证成功 注册
		// 2.1验证失败 返回错误信息

		return "";
	}

	@ResponseBody
	@RequestMapping("{email}/ajaxValidate.do")
	public String ajaxValidate(@PathVariable("email")String email) {
		// 1 、正则判断是否真实邮箱
		/*if (!"".matches(REGEX_EMAIL)) {
			return "请输入真实邮箱地址";
		}*/
		// 2 、是否已注册邮箱
		User user = userService.findByUsername(email);
		// 2.1 、发送邮箱验证码邮箱验证
		if (user == null) {
			//生成验证码 并且存入redis
			String code = VerifyCodeUtils.generateVerifyCode(6);
			pwdMailSender.send(email, code, email);
		}
		
		
		return "";
	}
}
