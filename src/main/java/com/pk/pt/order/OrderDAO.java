package com.pk.pt.order;

import java.text.DecimalFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pk.pt.goods.GoodsMapper;
import com.pk.pt.member.Member;

@Service
public class OrderDAO {
	
	@Autowired
	private SqlSession ss;
	
	public void orderInfo(Order o, HttpServletRequest req) {
		try {
			
			 Calendar cal = Calendar.getInstance();
			 int year = cal.get(Calendar.YEAR);
			 String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
			 String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));
			 String subNum = "";
			 
			 for(int i = 1; i <= 6; i ++) {
			  subNum += (int)(Math.random() * 10);
			 }
			 
			 String order_id = ymd + "_" + subNum;
			 
			 o.setOrder_id(order_id);
			 o.setTm_id(req.getParameter("tm_id"));
			 o.setTm_name(req.getParameter("tm_name"));
			 o.setTm_addr1(req.getParameter("tm_addr1"));
			 o.setTm_addr2(req.getParameter("tm_addr2"));
			 o.setTm_addr3(req.getParameter("tm_addr3"));
			 o.setTm_phone(req.getParameter("tm_phone"));
			 o.setTotalAmount(Integer.parseInt(req.getParameter("totalAmount")));	
			 o.setOrder_qty(Integer.parseInt(req.getParameter("order_qty")));
			 o.setGoods_id(req.getParameter("goods_id"));
			 
			 if (ss.getMapper(OrderMapper.class).orderInfo(o) == 1) {
				req.setAttribute("r", "결제 성공");
			 } 
			
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("r", "결제 실패");
		}
	}
	
	public void orderDetails(OrderDetail od, HttpServletRequest req) {
		try {
			
			ss.getMapper(OrderMapper.class).orderDetails(od);
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
	}
	
	public void orderView(HttpServletRequest req) {
		try {
			Member m = (Member)req.getSession().getAttribute("loginMember");
			String tm_id = m.getTm_id();
			
			req.setAttribute("orderView", ss.getMapper(OrderMapper.class).orderView(tm_id));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void getAllOrder(HttpServletRequest req) {
		try {
			req.setAttribute("orders", ss.getMapper(OrderMapper.class).getAllOrder());
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
}
