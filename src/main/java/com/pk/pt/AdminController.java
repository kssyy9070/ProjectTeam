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
	
		return "admin/main";		
	}
	
	@RequestMapping(value="/admin.update.go", method=RequestMethod.POST)
	public String updateGo(Goods g, HttpServletRequest req) {
		
		GDAO.goodsRead(g, req);
		return "admin/update";		
	}
	
	@RequestMapping(value="/admin.update.success", method=RequestMethod.POST)
	public String update(HttpServletRequest req) {
		
		GDAO.goodsUpdate(req);
		
		return "admin/update";		
	}
	
	@RequestMapping(value="/admin.members.go", method=RequestMethod.GET)
	public String memberList(HttpServletRequest req) {
		MDAO.getAllMember(req);
	
		return "admin/members";		
	}
	
	
	@RequestMapping(value="/admin.list.go", method=RequestMethod.GET)
	public String getAllGoods(HttpServletRequest req) {
		GDAO.getAllGoods(req);
		
		return "admin/list";		
	}
	
	@RequestMapping(value="/goods.read", method=RequestMethod.GET)
	public String goodsRead(Goods g, HttpServletRequest req) {
		
		GDAO.goodsRead(g, req);
		
		return "admin/read";	
	}
	
	@RequestMapping(value="/admin.reg", method=RequestMethod.GET)
	public String regGoods(HttpServletRequest req) {
		
	
		return "admin/reg";	
	}
	
	
	@RequestMapping(value="/admin.read", method=RequestMethod.POST)
	public String regGoods(Goods g, HttpServletRequest req) {
		GDAO.reg(g, req);
		GDAO.goodsRead(g, req);
	
		return "admin/read";	
	}
	
	@RequestMapping(value="/admin.delete", method=RequestMethod.GET)
	public String delete(HttpServletRequest req) {
		
		GDAO.delete(req);
	
		return "admin/main";	
	}
}
