package io.genkicell.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonAction {

	@RequestMapping("{path}/redirect.do")
	public String autoRedirect(HttpServletRequest request, HttpServletResponse respose,
			@PathVariable("path") String path) {
		String header = request.getHeader("Referer");
		String[] split = header.split("/");
		System.out.println(split[split.length-1]);
		
		return "redirect:/jsp/" + path;
	}
}
