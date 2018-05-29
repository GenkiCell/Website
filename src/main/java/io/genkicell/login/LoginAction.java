package io.genkicell.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import io.genkicell.pojo.User;
import io.genkicell.service.UserService;
import io.genkicell.utils.PwdMailSender;
import io.genkicell.utils.VerifyCodeUtils;
import redis.clients.jedis.Jedis;

@Controller
public class LoginAction {

	public static final String REGEX_EMAIL = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
	@Autowired
	private Jedis jedis;
	@Autowired
	private UserService userService;

	@Autowired
	private PwdMailSender pwdMailSender;

	@RequestMapping("login.do")
	public String login(HttpServletRequest request, HttpServletResponse respose, User user, Model model) {
		String[] header = request.getHeader("Referer").split("/");
		String path = header[header.length - 1];
		User existUser = userService.login(user);
		if (existUser != null) {
			request.getSession().setAttribute("user", existUser);
			return "redirect:/jsp/" + path;
		} else {
			model.addAttribute("error", "账号或密码错误");
			return "login";
		}
	}

	@RequestMapping("regist")
	public String regist(HttpServletRequest request, HttpServletResponse respose, User user,
			String code,Model model) {
		// 1.获取redis中的验证码
		String rcode = jedis.get(user.getUsername());
		if (rcode == null) {
			model.addAttribute("error", "验证码已失效,请重新获取验证码");
			return "error";
		}
		if (rcode.compareToIgnoreCase(code) == 0) {
			Integer id = userService.regist(user);
			// 2.验证成功 注册
			return "success";
		}else {
			model.addAttribute("error", "验证码错误");
			return "error";
		}
		// 2.1验证失败 返回错误信息

	}

	@ResponseBody
	@RequestMapping("{email}/ajaxValidate.do")
	public String ajaxValidate(@PathVariable("email") String email, Model model) {
		// 1 、正则判断是否真实邮箱
		if (!email.matches(REGEX_EMAIL)) {
			model.addAttribute("error", "请输入真实的邮箱地址");
			return "error";
		}
		// 2 、是否已注册邮箱
		User user = userService.findByUsername(email);
		// 2.1 、发送邮箱验证码邮箱验证
		if (user == null) {
			// 生成验证码 并且存入redis
			String code = VerifyCodeUtils.generateVerifyCode(6);
			jedis.set(email, code);
			jedis.expire(email, 300);
			pwdMailSender.send(email, code, email);
			return "success";
		} else {
			model.addAttribute("error", "该邮箱已被注册");
			return "error";
		}

	}
}
