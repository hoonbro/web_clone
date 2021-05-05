package com.clone.line.model.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@GetMapping("/list")
	public String list() {
		return "list";
	}
	
	@GetMapping("/detail")
	public String detail() {
		return "product";
	}
}
