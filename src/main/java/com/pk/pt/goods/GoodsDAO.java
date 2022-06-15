package com.pk.pt.goods;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
	
	public void reg(Goods g, HttpServletRequest req) {
		try {
			String path = req.getSession().getServletContext().getRealPath("resources/img");
			

			MultipartRequest mr = new MultipartRequest(req, 
					path, 
					300 * 1024 * 1024, 
					"UTF-8",
					new DefaultFileRenamePolicy()); 
			String goods_id = mr.getParameter("goods_id");
			String goods_name = mr.getParameter("goods_name");
			int goods_price = Integer.parseInt(mr.getParameter("goods_price"));
			int goods_stock = Integer.parseInt(mr.getParameter("goods_stock"));
			String goods_cate = mr.getParameter("goods_cate");
			String goods_detail = mr.getParameter("goods_detail");
			String goods_img = mr.getFilesystemName("goods_img");
			
			goods_img = URLEncoder.encode(goods_img, "UTF-8");
			goods_img = goods_img.replace("+", " ");
			
			g.setGoods_id(goods_id);
			g.setGoods_name(goods_name);
			g.setGoods_price(goods_price);
			g.setGoods_stock(goods_stock);
			g.setGoods_cate(goods_cate);
			g.setGoods_detail(goods_detail);
			g.setGoods_img(goods_img);
			
			if (ss.getMapper(GoodsMapper.class).regGoods(g) == 1) {
				req.setAttribute("r", "등록성공");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("r", "등록실패");
		}
	}
}
