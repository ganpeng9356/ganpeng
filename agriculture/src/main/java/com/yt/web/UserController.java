package com.yt.web;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yt.entity.User;
import com.yt.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	@Resource
	private HttpServletRequest request;
	
	@RequestMapping(value="registerUser.do",method=RequestMethod.POST)
	public String registerUser(User user){
		boolean i=userService.addUser(user);
		if(i==true){
			request.setAttribute("msg", "注册成功");
		}
		return "register";
	}
	
	@RequestMapping(value="loginUser.do",method=RequestMethod.POST)
	public String loginUser(User user){
		int j=userService.selectUser(user);
		if(j!=0){
			System.out.println(user.getUname());
			request.getSession().setAttribute("uname", user.getUname());
			List<User> u=new ArrayList<User>();
			u=userService.inUser(user.getUname());
			request.getSession().setAttribute("ID", u.get(0).getID());
		}else{
			request.setAttribute("msg", "登录失败");
		}
		return "index";
	}
	@RequestMapping("cancellation.do")
	public String cancellation(){
		request.getSession().removeAttribute("uname");
		request.getSession().removeAttribute("ID");
		return "index";
	}
	@RequestMapping(value="modifyUser.do",method=RequestMethod.POST)
	public String modifyUser(User user){
		String uname=(String)request.getSession().getAttribute("uname");
		System.out.println(uname);
		userService.modifyUser(user,uname);
		List<User> user02=new ArrayList<User>();
		user02=userService.inUser(uname);
		request.setAttribute("user02", user02);
		return "personalCenter";
	}
}
