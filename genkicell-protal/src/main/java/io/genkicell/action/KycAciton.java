package io.genkicell.action;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import io.genkicell.pojo.User;
import io.genkicell.pojo.Verification;
import io.genkicell.service.KycService;

@Controller
public class KycAciton {
	
	@Autowired
	private KycService kycService;

	@RequestMapping("kycSubmit.do")
	public String kycSubmit(Verification verification, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {
		User user = (User) session.getAttribute("user");
		if (user == null) {
			//return "login";
		}
		
		//verification.setUserid(user.getId());
		verification.setStatus(0);
		verification.setUpdatetime(new Timestamp(System.currentTimeMillis()));
		
		Integer id = kycService.save(verification);
		
		System.out.println(verification);
		return "/jp/index";
	}

}
