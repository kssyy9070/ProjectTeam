package com.pk.pt.cart;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pk.pt.goods.Goods;
import com.pk.pt.member.Member;

@Service
public class CartDAO {
	
	@Autowired
	private SqlSession ss;
	
	public void addCart(Cart c, HttpServletRequest req) {
		try {
			
		ss.getMapper(CartMapper.class).addCart(c);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void cartList(HttpServletRequest req) {
		try {
			
			Member m = (Member)req.getSession().getAttribute("loginMember");
			String tm_id = m.getTm_id();
			
			req.setAttribute("cartList", ss.getMapper(CartMapper.class).cartList(tm_id));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void deleteCart(Cart c, HttpServletRequest req) {
		try {
			
			ss.getMapper(CartMapper.class).deleteCart(c);
			
		} catch (Exception e) {
			e.printStackTrace();
		
		}
	}
	
}
	
