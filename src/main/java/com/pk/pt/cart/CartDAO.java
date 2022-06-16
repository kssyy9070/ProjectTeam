package com.pk.pt.cart;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pk.pt.member.Member;

@Service
public class CartDAO {
	
	@Autowired
	private SqlSession ss;
	
	public void addCart(Cart c, HttpServletRequest req) {
		
		Member m = (Member)req.getSession().getAttribute("loginMember");
		c.setTm_id(m.getTm_id());
		if (ss.getMapper(CartMapper.class).addCart(c) == 1) {
			req.setAttribute("r", "추가 성공");
		} else {
			req.setAttribute("r", "추가 실패");
		}
	}
}
