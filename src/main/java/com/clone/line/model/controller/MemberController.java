package com.clone.line.model.controller;

import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.clone.line.model.Member;
import com.clone.line.model.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;

	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam Map<String, String> map, Model model, HttpSession session, HttpServletResponse response) {
		try {
			Member member = memberService.login(map);
			if (member != null) {
				session.setAttribute("userInfo", member);
				
				Cookie cookie = new Cookie("saveId", member.getUserId());
				cookie.setPath("/");
				if("saveok".equals(map.get("save"))) {
					cookie.setMaxAge(60 * 60 * 24);
				} else {
					cookie.setMaxAge(0);
				}
				response.addCookie(cookie);
			}
			else {
				model.addAttribute("msg", "가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.");
				return "login";
			}
		} catch (Exception e) {
			model.addAttribute("msg", "로그인 중 문제가 발생했습니다.");
			return "login";
		}
		return "index";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}
	
	@GetMapping("join")
	public String join() {
		return "join";
	}
	
	@PostMapping("/join")
	public String join(Member member, Model model) {
		try {
			memberService.join(member);
			model.addAttribute("msg", "회원가입 되었습니다.");
		} catch (Exception e) {
			model.addAttribute("msg", "회원가입 중 문제가 발생했습니다.");
		}
		return "login";
	}
}
