package com.steppe.nomad.service;

import java.io.IOException;

import java.util.List;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.steppe.nomad.bean.Catagory;
import com.steppe.nomad.dao.CatagoryDao;


@Component
public class ProjectManagement {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private HttpServletRequest req;
	@Autowired
	private HttpServletResponse res;
	
	@Autowired
	private CatagoryDao cDao;
	
	private ModelAndView mav;
	

	public ModelAndView execute(int cmd) {
		switch(cmd){
		case 1:
			goAddProject();
			break;
		case 2:
			getprojectCatagory1();
			break;
		case 3:
			getprojectCatagory2();
			break;
		}
		return mav;
	}


	private void getprojectCatagory2() {
		String view=null;
		mav=new ModelAndView();
		int pc1_id=Integer.parseInt(req.getParameter("pc1_id"));
		System.out.println(pc1_id);
		List<Catagory> clist2=cDao.cList1(pc1_id);
		System.out.println(clist2);
		if(clist2!=null){
			StringBuilder sb=new StringBuilder();
			sb.append("<option value='2차 분야를 선택하세요'>2차 분야를 선택하세요</option>");
			for(int i=0; i<clist2.size(); i++){
				Catagory ca = clist2.get(i);
				sb.append("<option>"+ca.getPc2_name());
				sb.append("</option>,");
			}
			mav.addObject("cList2", sb.toString());
			System.out.println(sb);
			view="projectInsert";
		}else{
			view="errorAjax";
		}
		mav.setViewName(view);
	}

	private void getprojectCatagory1() {
		String view=null;
		mav=new ModelAndView();
		//Catagory ca=new Catagory();
		List<Catagory> cList1=cDao.cList();
		
		if(cList1!=null){
			StringBuilder sb=new StringBuilder();
			sb.append("<select name='first' id='firstCatagory'> <a href='#secondCatagory' onchange='firstChange("+ca.getPc1_id()+")'>");
			sb.append("<option value='1차 분야를 선택하세요'>1차 분야를 선택하세요</option>");
			for(int i=0; i<cList1.size(); i++){
				Catagory ca = cList1.get(i);
				sb.append("<option>" +ca.getPc1_name());
				sb.append("</a></option>,");
			}
				sb.append("</select>");
				mav.addObject("cList1", sb.toString());
				view="projectInsert";	
				
		}
		mav.setViewName(view);
	}
	
	private void goAddProject() {
		mav=new ModelAndView();
		String view=null;
		view="redirect:/firstCatagory";
		mav.setViewName(view);
		
	}

	/*	int cList2=Integer.parseInt(req.getParameter("pc1_id"));
		System.out.println(cList2);
			List<Catagory> clist2=cDao.cList1(cList2);
			System.out.println(clist2);
			if(clist2!=null){
				StringBuilder sb=new StringBuilder();
				sb.append("<option value='2차 분야를 선택하세요'>2차 분야를 선택하세요</option>");
					for(int i=0; i<clist2.size(); i++){
						Catagory ca = clist2.get(i);
						sb.append("<option value='"+ca.getPc2_name()+"'>"+ca.getPc2_name());
						sb.append("</option>,");
					}
					mav.addObject("cList2", sb.toString());
					System.out.println(sb);
				}
				if(cList2==0){
					view="projectInsert";
				mav.setViewName(view);
				}else{
					try {
						res.getWriter().write(cList2);
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
				
				
		
		*/
			
		
		/*
			cList=cDao.getprojectCatagory1();
			if(cList!=null){
				StringBuilder sb = new StringBuilder();
				sb.append("<table align='center'>");
				for(int i=0; i<cList.size(); i++)
				{
					Catagory C=cList.get(i);
					sb.append("<tr><td>"+C.getPc1_name()+"</td></tr>");
				}
				sb.append("</table>");
				mav.addObject("cList", sb.toString());
				System.out.println(sb.toString());
			
			view="projectInsert";
		}else{
			view="projectInsert";
		}
		mav.setViewName(view);
	}

*/
		
	}

