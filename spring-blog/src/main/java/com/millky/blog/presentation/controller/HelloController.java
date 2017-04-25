package com.millky.blog.presentation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

	@RequestMapping({ "/", "/hello" })
	public String index(Model model) {

		model.addAttribute("name", "Hwan");

		return "hello";
	}
	
	@RequestMapping ("/blog")
	public String blog(Model model) {

		model.addAttribute("name", "Hwan");

		return "blog";
	}
}
