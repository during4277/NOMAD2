package com.steppe.nomad;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.steppe.nomad.service.EmailManagement;
import com.steppe.nomad.service.MemberManagement;

@Controller
public class HomeController {

	private ModelAndView mav;
	private EmailManagement em;
	
	@Autowired
	private MemberManagement mm;
		
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "home";
	}

	//회원 가입 페이지로 이동
	@RequestMapping(value = "/goJoin", method = RequestMethod.GET)
	public ModelAndView goJoin() {
		mav = new ModelAndView();
		mav.setViewName("join"); //join.jsp 회원가입 페이지
		return mav;
	}
	
	//이메일 인증
	@RequestMapping(value = "/sendCode", method = RequestMethod.POST)
	public ModelAndView sendCode() {
		System.out.println("ModelAndView sendCode 시작");
		mav = new ModelAndView(); 
		mm.sendCode();
		return mav;
	}
	
	
}
