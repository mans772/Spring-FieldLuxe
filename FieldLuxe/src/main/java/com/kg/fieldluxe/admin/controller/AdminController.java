package com.kg.fieldluxe.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@GetMapping("/manage")
	public String manage() {
		return "admin/manageMain";
	}
	
	@GetMapping("/test")
	public String test() {
		return "admin/AAA";
	}
}
