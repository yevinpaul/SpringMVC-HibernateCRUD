package com.periq.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/hello")
public class HelloController {
	
	@RequestMapping(value="/index/{user}", method = RequestMethod.GET)
	public String index(@PathVariable("user") String user, ModelMap model) {
	//	model.addAttribute("message", "Hello Spring MVC!!!");
		
		model.addAttribute("userData", user);
		
		return "hello";
	}
}