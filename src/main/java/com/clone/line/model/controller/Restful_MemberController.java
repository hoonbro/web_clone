package com.clone.line.model.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.clone.line.model.service.MemberService;


@RestController
@RequestMapping("/restMember")
public class Restful_MemberController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("/join/{userId}")
	public ResponseEntity<Boolean> checkId(@PathVariable String userId) {
		int isExist = memberService.isExist(userId);
		if(isExist == 0) {
			return new ResponseEntity<Boolean>(false, HttpStatus.OK);
		}
		else {
			return new ResponseEntity<Boolean>(true, HttpStatus.OK);
		}
	}
}
