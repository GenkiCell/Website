package io.genkicell.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonAction {

	@RequestMapping("{path}/redirect.do")
	public String autoRedirect(@PathVariable("path") String path) {
		return "redirect:/"+path;
	}
}
