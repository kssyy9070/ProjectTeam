package com.pk.pt;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pk.pt.goods.Goods;
import com.pk.pt.goods.GoodsDAO;
import com.pk.pt.member.MemberDAO;


@Controller
public class AdminController {

	@Autowired
	private MemberDAO MDAO;
	
	@Autowired
	private GoodsDAO GDAO;
	
	@RequestMapping(value="/adminPage.go", method=RequestMethod.GET)
	public String goAdminMain(HttpServletRequest req) {
		
		req.setAttribute("cp", "admin/main.jsp");
		return "index";		
	}
	
	@RequestMapping(value="/admin.members.go", method=RequestMethod.GET)
	public String memberList(HttpServletRequest req) {
		MDAO.getAllMember(req);
		
		req.setAttribute("cp", "admin/members.jsp");
		return "index";		
	}
	
	@RequestMapping(value="/admin.goods.go", method=RequestMethod.GET)
	public String getAllGoods(HttpServletRequest req) {
		GDAO.getAllGoods(req);
		
		req.setAttribute("cp", "goods/list.jsp");
		return "index";		
	}
	
	@RequestMapping(value="/goods.read", method=RequestMethod.GET)
	public String goodsRead(Goods g, HttpServletRequest req) {
		
		GDAO.goodsRead(g, req);
		
		req.setAttribute("cp", "goods/read.jsp");
		return "index";	
	}
}
