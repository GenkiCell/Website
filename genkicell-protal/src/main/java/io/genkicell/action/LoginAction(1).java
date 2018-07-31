package io.genkicell.action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import io.genkicell.interfac.MailSendService;
import io.genkicell.pojo.User;
import io.genkicell.service.UserService;
import io.genkicell.utils.RandomIdCode;
import io.genkicell.utils.VerifyCodeUtils;
import redis.clients.jedis.Jedis;

@Controller
public class LoginAction {

	public static final String REGEX_EMAIL = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
	public static final String REGEX_PASSWORD = "^[\\w]{6,12}$";
	@Autowired
	private Jedis jedis;
	@Autowired
	private UserService userService;

	@Autowired
	private MailSendService mailSendService;

	@RequestMapping("login.do")
	@ResponseBody
	public String login(HttpServletRequest request, HttpServletResponse respose, User user, Model model) {
		/*
		 * String[] header = request.getHeader("Referer").split("/"); String path =
		 * header[header.length - 1];
		 */
		if (StringUtils.isBlank(user.getUsername())) {
			return "please enter a valid-email address";
		}
		if (StringUtils.isBlank(user.getPassword())) {
			return "please enter a password";

		}
		User existUser = userService.login(user);
		if (existUser != null) {
			request.getSession().setAttribute("user", existUser);

			return "success";
		} else {
			return "The email address or password you have entered is incorrect.";
		}
	}
	@RequestMapping("signout.do")
	public String signOut(HttpServletRequest request, HttpServletResponse respose,String username) {
		request.getSession().removeAttribute("user");
		
		return "redirect:index.html";
	}

	@RequestMapping("register.do")
	@ResponseBody
	public String regist(HttpServletRequest request, HttpServletResponse respose, String email, String password,
			String repassword, String code, Model model, Boolean isagree) {
		// 1.获取redis中的验证码
		if (StringUtils.isBlank(email)) {
			return "please enter a valid-email address";
		}
		
		if (!password.matches(REGEX_PASSWORD) || !repassword.matches(REGEX_PASSWORD)) {
			return "The password must be 6-12 numbers or letters";
		}
		if (StringUtils.isBlank(password) || StringUtils.isBlank(repassword)) {
			return "please enter a password";
		}

		if (!password.contentEquals(repassword)) {
			return "Please enter the same password in both password fields.";
		}
		
		if (isagree==null) {
			return "accept terms & conditions before registration";
		}
		String rcode = jedis.get(email);
		

		if (rcode == null) {
			//验证码已失效,请重新获取验证码"
			return "The verification code has failed. please get it again."; 
		}
		if (rcode.equalsIgnoreCase(code.trim())) {
			User user = new User();
			user.setUsername(email);
			user.setPassword(password);
			user.setRegisttime(new Timestamp(System.currentTimeMillis()));
			String generateRandomIdCode = RandomIdCode.generateRandomIdCode(9);
			user.setIdcode(Integer.parseInt(generateRandomIdCode));
			Integer id = userService.regist(user);
			// 2.验证成功 注册
			return "success";
		} else {
			return "the verification code error";
		}
		// 2.1验证失败 返回错误信息

	}

	@RequestMapping("ajaxValidate.do")
	@ResponseBody
	public String ajaxValidate(String email, Model model) {
		if (StringUtils.isBlank(email)) {
			return "please enter a valid-email address";
		}
		// 1 、正则判断是否真实邮箱
		if (!email.matches(REGEX_EMAIL)) {
			return "The email address is invalid";
		}
		// 2 、是否已注册邮箱
		User user = userService.findByUsername(email);
		// 2.1 、发送邮箱验证码邮箱验证
		if (user == null) {
			try {
				// 生成验证码 并且存入redis
				String code = VerifyCodeUtils.generateVerifyCode(6);
				mailSendService.send(email, code, email);
				jedis.set(email, code);
				jedis.expire(email, 300);
			} catch (Exception e) {
				e.printStackTrace();
				return "System error, please try again";
			}
			return "The verification code has been sent successfully";
		} else {
			return "This e-mail is already registered.";
		}

	}
	
	@RequestMapping("isLogin.do")
	@ResponseBody
	public Object isLogin(HttpServletRequest request, HttpServletResponse respose) {
		Object user = request.getSession().getAttribute("user");
		if (user ==null) {
			return null;
		}
		return user;
	}
	
	
}


















