package com.clone.line.model.controller;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.clone.line.model.Product;
import com.clone.line.model.service.ProductService;


@RestController
@RequestMapping("/restProduct")
public class Restful_ProductController {

	@Autowired
	private ProductService productService;
	
	@GetMapping("/orderby/{data}")
	public ResponseEntity<List<Product>> orderby(@PathVariable String data, HttpSession session, Model model) {
		List<Product> plist = productService.orderby(data);
		Set<String> set = (Set<String>) session.getAttribute("likeSet");
		model.addAttribute("likeSet", set);
		System.out.println(set.size());
		if(plist != null) {
			return new ResponseEntity<List<Product>>(plist, HttpStatus.OK);
		}
		else
			return new ResponseEntity(HttpStatus.NO_CONTENT);
	}
	
	/*
	 * @GetMapping("/like/{pNum}") public ResponseEntity<Integer> like(@PathVariable
	 * String pNum) { productService.setLike(pNum); int isLike = 0; isLike =
	 * productService.getLike(pNum); if(isLike != 0) { return new
	 * ResponseEntity<Integer>(isLike, HttpStatus.OK); } else return new
	 * ResponseEntity(HttpStatus.NO_CONTENT); }
	 */
}
