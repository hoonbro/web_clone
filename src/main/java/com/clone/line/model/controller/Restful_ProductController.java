package com.clone.line.model.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
	public ResponseEntity<List<Product>> orderby(@PathVariable String data) {
		System.out.println(data);
		List<Product> plist = productService.orderby(data);
		if(plist != null) {
			System.out.println(plist.size());
			for(Product p : plist) {
				System.out.println(p.toString());
			}
			return new ResponseEntity<List<Product>>(plist, HttpStatus.OK);
		}
		else
			return new ResponseEntity(HttpStatus.NO_CONTENT);
	}
}
