package com.yt.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yt.entity.Commodity;
import com.yt.entity.User;
import com.yt.service.CommodityService;
import com.yt.service.UserService;

@Controller
@RequestMapping("/jump")
public class JumpController {

	@Autowired
	private CommodityService commodityService;
	@Autowired
	private UserService userService;
	@Autowired
	private HttpServletRequest request;
	
	@RequestMapping("forindex.do")
	public String forindex(){
		return "index";
	}
	
	@RequestMapping("register.do")
	public String forregister(){
		return "register";
	}
	
	@RequestMapping("addgoods.do")
	public String addgoods(){
		return "addgoods";
	}
	
	@RequestMapping("buygoods.do")
	public String buygoods(){
		List<Commodity> com=new ArrayList<Commodity>();
		com=commodityService.selectCommodity();
		request.setAttribute("com", com);
		return "buygoods";
	}
	@RequestMapping("personalCenter.do")
	public String personalCenter(){
		String uname=(String)request.getSession().getAttribute("uname");		
		List<User> user02=new ArrayList<User>();
		user02=userService.inUser(uname);
		request.setAttribute("user02", user02);
		return "personalCenter";
	}
	@RequestMapping("purchase.do")
	public String purchase(){
		return "purchase";
	}
}
