package com.pk.pt.goods;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class GoodsDAO {
	
	@Autowired
	private SqlSession ss;
	
	public void goodsRead(Goods g, HttpServletRequest req) {
		try {
			req.setAttribute("goodsRead", ss.getMapper(GoodsMapper.class).goodsRead(g));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void getAllGoods(HttpServletRequest req) {
		try {
			req.setAttribute("goods", ss.getMapper(GoodsMapper.class).getAllGoods());
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	public void reg(Goods gs, HttpServletRequest req) {
		try {
			
			GoodsMapper tgm = ss.getMapper(GoodsMapper.class);
			
			if (tgm.regGoods(gs) == 1) {
				req.setAttribute("r", "등록성공");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("r", "등록실패");
		}
	}
}
