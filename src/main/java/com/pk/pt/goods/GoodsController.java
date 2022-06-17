package com.pk.pt.goods;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pk.pt.review.Review;
import com.pk.pt.review.ReviewDAO;

@Controller
public class GoodsController {
	
	@Autowired
	private GoodsDAO GDAO;
	
	@Autowired
	private ReviewDAO RDAO;
	
	@RequestMapping(value="/shop.all.go", method=RequestMethod.GET)
	public String goAll(HttpServletRequest req) {
	
		GDAO.getAllGoods(req);	
	
		return "goods/all";		
	}
	
	@RequestMapping(value="/shop.top.go", method=RequestMethod.GET)
	public String goAdminMain(HttpServletRequest req) {
	
		GDAO.getAllGoods(req);	
	
		return "goods/top";		
	}
	
	
	@RequestMapping(value="/shop.bottom.go", method=RequestMethod.GET)
	public String goButtom(HttpServletRequest req) {
	
		GDAO.getAllGoods(req);	
	
		return "goods/bottom";		
	}
	
	@RequestMapping(value="/shop.outer.go", method=RequestMethod.GET)
	public String goOuter(HttpServletRequest req) {
	
		GDAO.getAllGoods(req);	
	
		return "goods/outer";		
	}
	
	@RequestMapping(value="/shop.top", method=RequestMethod.POST)
	public String goCategory(HttpServletRequest req) {
	
		GDAO.getAllGoods(req);	
		return "goods/top";		
	}
	
	@RequestMapping(value="/goods.detail", method=RequestMethod.GET)
	public String asdf(Review r ,Goods g,HttpServletRequest req) {
		GDAO.goodsRead(g, req);
		RDAO.getReview(r, req);
		req.setAttribute("cp", "goods/detail.jsp");
		return "index";
	}
	

}
