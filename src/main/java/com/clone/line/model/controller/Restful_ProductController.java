package com.clone.line.model.controller;

import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.clone.line.model.Member;
import com.clone.line.model.Product;
import com.clone.line.model.SearchCondition;
import com.clone.line.model.service.ProductService;
import com.clone.util.PageNavigation;


@RestController
@RequestMapping("/restProduct")
public class Restful_ProductController {

	@Autowired
	private ProductService productService;
	
	@GetMapping("/orderby/{data}")
	public ResponseEntity<List<Product>> orderby(@PathVariable String data, HttpSession session, Model model) {
		List<Product> plist = productService.orderby(data);
		Set<String> set = (Set<String>) session.getAttribute("likeSet");
		session.setAttribute("order", set);
		if(plist != null) {
			return new ResponseEntity<List<Product>>(plist, HttpStatus.OK);
		}
		else
			return new ResponseEntity(HttpStatus.NO_CONTENT);
	}
	

	@PostMapping(value = "/search")
	public ResponseEntity<Map<String, Object>> search(@RequestBody SearchCondition condition) {
		try {
			Map<String, Object> map = productService.pagingSearch(condition);
			return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<Map<String, Object>>(HttpStatus.NO_CONTENT);
    }
  }
  
	@PostMapping("/setLike/{data}")
	public ResponseEntity<Void> setLike(@PathVariable String data, HttpSession session){
		try {
			Member member = (Member) session.getAttribute("userInfo");
			member.setpNum(data);
			productService.setLike(member);
			Set<String> set = (Set<String>) session.getAttribute("likeSet");
			set.add(data);
			session.setAttribute("likeSet", set);
			return new ResponseEntity<Void>(HttpStatus.OK);
		}catch (Exception e) {
			return new ResponseEntity(HttpStatus.NO_CONTENT);
		}
	}
	
	@DeleteMapping("/deleteLike/{data}")
	public ResponseEntity<Void> deleteLike(@PathVariable String data, HttpSession session){
		try {
			Member member = (Member) session.getAttribute("userInfo");
			member.setpNum(data);
			productService.deleteLike(member);
			Set<String> set = (Set<String>) session.getAttribute("likeSet");
			set.remove(data);
			System.out.println("out " + set.size());
			session.setAttribute("likeSet", set);
			return new ResponseEntity<Void>(HttpStatus.OK);
		}catch (Exception e) {
			return new ResponseEntity(HttpStatus.NO_CONTENT);
		}
	}
	
	/*
	 * @GetMapping("/like/{pNum}") public ResponseEntity<Integer> like(@PathVariable
	 * String pNum) { productService.setLike(pNum); int isLike = 0; isLike =
	 * productService.getLike(pNum); if(isLike != 0) { return new
	 * ResponseEntity<Integer>(isLike, HttpStatus.OK); } else return new
	 * ResponseEntity(HttpStatus.NO_CONTENT); }
	 */
}
