package com.yt.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/payment")
public class PaymentController {

	@Autowired
    private HttpServletRequest request;
	
	@RequestMapping("toindex.do")
	public String toindex(){
		return "index";
	}
	@RequestMapping("topay.do")
	public String topay(){
		System.out.println("11");
		return "alipay.trade.page.pay";
	}
}
