package com.yt.web;

import java.io.File;
import java.io.IOException;





import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.yt.entity.Commodity;
import com.yt.entity.Record;
import com.yt.service.CommodityService;
import com.yt.service.RecordService;
import com.yt.util.Constans;

@Controller
@RequestMapping("/commodity")
public class CommodityController {

	@Autowired
	private CommodityService commodityService;
	@Autowired
	private RecordService recordService;
	@Resource
	private HttpServletRequest request;
	
	@RequestMapping(value="addCommodity.do", method = RequestMethod.POST)
	public String addCommodity(@RequestParam("file") MultipartFile file,Commodity commodity){
		//处理上传文件
				if (file != null && !file.isEmpty()) {
					//构造文件存储的本地路径
					File dir = new File(request.getSession().getServletContext().getRealPath("/") +Constans.STORE_PATH);
					String fileName = file.getOriginalFilename();
					try {
						file.transferTo(new File(dir, fileName));
						System.out.println(file.getSize());
					} catch (IOException e) {
						e.printStackTrace();
					}
					//判断上传文件的大小			
					commodity.setCroute(Constans.STORE_PATH);
					commodity.setCimg(fileName);
					commodity.setCstate("1");
				}
				boolean a=commodityService.addCommodity(commodity);
				if(a==true){
					request.setAttribute("msg", "添加成功");
				}else{
					request.setAttribute("msg", "添加失败");
				}
				return "addgoods";
	}
	
	@RequestMapping("purchase.do")
	public String purchase(){
		int cid=Integer.parseInt(request.getParameter("cid"));
		String cprice=(String)request.getParameter("cprice");
		String cname=(String)request.getParameter("cname");
		request.setAttribute("cname", cname);
		request.setAttribute("cprice", cprice);
//		System.out.println(cid);
		String ID=(String)request.getSession().getAttribute("ID");
//		System.out.println(ID);
		String dateStr = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		System.out.println(dateStr);
		Record record=new Record();
		record.setCid(cid);
		record.setID(ID);
		record.setRpice(cprice);
		record.setRtime(dateStr);
		boolean b=commodityService.updateCommodity(cid);
		recordService.addRecord(record);
		if(b==true){
		List<Commodity> com=new ArrayList<Commodity>();
		com=commodityService.selectCommodity();
		request.setAttribute("com", com);
		return "index2";
		}
		return "index";
	}
	@RequestMapping("assessment.do")
	public String assessment(){
		String cname=(String)request.getParameter("cname");
		List<Commodity> commod=new ArrayList<Commodity>();
		commod=commodityService.commodityAsses(cname);
		request.setAttribute("commod", commod);
		return "purchase";
	}
}
