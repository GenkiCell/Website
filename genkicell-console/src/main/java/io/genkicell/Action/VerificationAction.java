package io.genkicell.Action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import io.genkicell.pojo.Citys;
import io.genkicell.pojo.User;
import io.genkicell.pojo.Verification;
import io.genkicell.service.CitySerivce;
import io.genkicell.service.UserService;
import io.genkicell.service.VerficationService;

@Controller
public class VerificationAction {

	@Autowired
	private VerficationService verficationService;
	@Autowired
	private UserService userService;
	@Autowired
	private CitySerivce citySerivce;

	@RequestMapping("uncheckList.do")
	public String uncheckAction(HttpServletRequest request, HttpServletResponse response) {

		List<Verification> list = verficationService.findUncheck();

		for (Verification verification : list) {
				Citys citys = citySerivce.findByNid(verification.getNationalityid());
				verification.setCitys(citys);
			}
		request.setAttribute("users", list);
		return "uncheck";
	}

	@RequestMapping("detail.do")
	public String userDetail(Integer userId, HttpServletRequest request, HttpServletResponse response) {
		Verification verification =  verficationService.findByUserId(userId);
		User user = userService.findById(userId);
		Citys city = citySerivce.findByNid(verification.getNationalityid());
		
		request.setAttribute("verification", verification);
		request.setAttribute("user", user);
		request.setAttribute("city", city);
		return "detail";

	}
}


















