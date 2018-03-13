package com.yt.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class Test1Interceptor implements HandlerInterceptor{

	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
	//	System.out.println("执行到了afterCompletion");
		
	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		//System.out.println("执行到了postHandle");
		//可以通过ModelAndView参数来改变显示的视图，或修改发往视图的方法
		
	}
   //返回值：表示我们是否需要将当前的请求拦截下来
	//如果返回false ，请求就被终止
	//如果返回true，	请求会被继续运行
	//Object arg2表示的是被拦截的请求的目标对象
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object arg2) throws Exception {
		System.out.println("执行到了preHandle");
		if(request.getSession().getAttribute("uname")==null){
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		return false;
		}
		return true;
	}

}
