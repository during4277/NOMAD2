package com.steppe.nomad;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.steppe.nomad.service.ProjectManagement;

@Controller
public class ClientController {

	private ModelAndView mav;
	
	@Autowired
	private ProjectManagement pm;
	
	@RequestMapping(value = "/goAddProject", method = RequestMethod.GET)//redirect일 경우
	public ModelAndView goAddProject() {
		mav=new ModelAndView();
		mav=pm.execute(1);
		return mav;
	}
	@RequestMapping(value = "/firstCatagory", method = RequestMethod.GET)//redirect일 경우
	public ModelAndView firstCatagory() {
		mav=new ModelAndView();
		mav=pm.execute(2);
		return mav;
	}
	
	@RequestMapping(value = "/secondCatagory", method = RequestMethod.GET)//redirect일 경우
	public ModelAndView secondCatagory() {
		mav=new ModelAndView();
		mav=pm.execute(3);
		System.out.println(1);
		return mav;
	}
}
