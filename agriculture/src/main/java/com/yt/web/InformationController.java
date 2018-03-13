package com.yt.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/infor")
public class InformationController {

	@RequestMapping("mation.do")
	public String mation(){
		return "information";
	}
}
