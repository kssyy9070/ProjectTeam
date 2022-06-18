package com.pk.pt.cart;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pk.pt.member.Member;

@Controller
public class CartController {

	@Autowired
	CartDAO CDAO;
	
	@RequestMapping(value = "/cart.add", method = RequestMethod.POST)
	public @ResponseBody int addCart(Cart c, HttpServletRequest req) {
	 
	 int result = 0;
	 
	 Member m = (Member)req.getSession().getAttribute("loginMember");
	 
	 if(m != null) {
	  c.setTm_id(m.getTm_id());
	  CDAO.addCart(c, req);
	  result = 1;
	 }
	 
	 return result;
	}
	
	@RequestMapping(value = "/cart.list", method=RequestMethod.GET)
	public String getCartList(HttpServletRequest req) {
		
		CDAO.cartList(req);
		
		return "cart/list";
	}
	
	@RequestMapping(value = "/deleteCart", method = RequestMethod.POST)
	public @ResponseBody int deleteCart(
			@RequestParam(value = "chbox[]") List<String> chArr, Cart c, HttpServletRequest req) {
	 
	
	 Member m = (Member)req.getSession().getAttribute("loginMember");
	 String tm_id = m.getTm_id();
	 
	 int result = 0;
	 int cart_id = 0;
	 
	 if(m != null) {
	  c.setTm_id(tm_id);
	  
	  for (String i : chArr) {
		cart_id = Integer.parseInt(i);
		c.setCart_id(cart_id);
		CDAO.deleteCart(c, req);
	}
	  result = 1;
	 }
	 
	 return result;
	}

		
	
}
