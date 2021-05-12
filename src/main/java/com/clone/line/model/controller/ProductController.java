package com.clone.line.model.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.clone.line.model.Product;
import com.clone.line.model.ProductDetail;
import com.clone.line.model.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@GetMapping("/list")
	public String list(Model model) {
		try {
			List<Product> list = productService.getList();
			model.addAttribute("list", list);
			return "list";
		}catch (Exception e) {
			model.addAttribute("msg", "리스트 생성중 오류 발생");
			return "index";
		}
	}
	
	@GetMapping("/detail")
	public String detail(String pNum,Model model) {
		try {
			ProductDetail productDetail = productService.getProductInfo(pNum);
			System.out.println(productDetail.getThumbnail());
			System.out.println(productDetail.getDetail());
			model.addAttribute("productDetail",productDetail);
			return "product";
		}
		catch (Exception e) {
			System.out.println("상세정보 조회 중 오류 발생");
			return "list";
		}
	}
}
