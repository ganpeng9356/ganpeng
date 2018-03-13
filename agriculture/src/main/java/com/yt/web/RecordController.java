package com.yt.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yt.entity.Record;
import com.yt.service.RecordService;

@Controller
@RequestMapping("/record")
public class RecordController {

	@Autowired
	private RecordService recordService;
	@Autowired
	private HttpServletRequest request;
	
	@RequestMapping("selectRecord.do")
	public String selectRecord(){
		String ID=(String)request.getSession().getAttribute("ID");
		List<Record> record=new ArrayList<Record>();
		record=recordService.selectRecord(ID);
		System.out.println(record.get(0).getRtime());
		for(int i=0;i<record.size();i++){
			record.get(i).setCstate("已购买");
		}
		request.setAttribute("record", record);
		return "personalCenter2";
	}
}
