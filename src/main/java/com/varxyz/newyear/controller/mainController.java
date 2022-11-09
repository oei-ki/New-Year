package com.varxyz.newyear.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class mainController {

	@GetMapping("/year/main")
	public String mainForm(Model model, HttpServletRequest request) {
		return "main";
	}
}
