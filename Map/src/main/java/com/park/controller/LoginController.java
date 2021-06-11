package com.park.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.park.member.MemberDTO;
import com.park.service.MemberService;

@Controller
public class LoginController {
	
	@Autowired
	private MemberService ms;
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(MemberDTO user, HttpSession se) {
		
		MemberDTO login = ms.getMember(user);
		
		if(login == null) {
			return "templates/login_fail"; 
		}
		
		se.setAttribute("login", login);
		
		return "redirect:/";
	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logout(HttpSession se) {
		
		se.invalidate();
		
		return "redirect:/";	
	}
}
