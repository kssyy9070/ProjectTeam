package com.pk.pt.order;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pk.pt.goods.Goods;
import com.pk.pt.goods.GoodsDAO;
import com.pk.pt.member.Member;

@Controller
public class OrderController {
	
	@Autowired
	private OrderDAO ODAO;
	
	@Autowired
	private GoodsDAO GDAO;
	
	@RequestMapping(value="/order.order", method=RequestMethod.GET)
	public String orderResult(Order o, HttpServletRequest req) {
		
		return "order/order";
	}
	
	@RequestMapping(value="/order.orderResult.go", method=RequestMethod.POST)
	public String orderResult(HttpServletRequest req, Order o, OrderDetail od) {
		
		ODAO.orderInfo(o, req);
		ODAO.orderView(req);
		
		return "order/orderView";
	}
	
	@RequestMapping(value="/order.myorderList", method=RequestMethod.GET)
	public String orderResult(HttpServletRequest req) {
		
		ODAO.orderView(req);
		
		return "order/orderView";
	}
	
}
