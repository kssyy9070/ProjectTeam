package com.pk.pt.goods;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
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
	
	public void goodsRead(Goods tg, HttpServletRequest req) {
		try {
			Goods tgs = ss.getMapper(GoodsMapper.class).goodsRead(tg);
			req.setAttribute("goodsRead", tgs);
			req.getSession().setAttribute("tgsInfo", tgs);
			req.getSession().setMaxInactiveInterval(600);
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
	 public void goodsUpdate(HttpServletRequest req) {
	      String path = null;
	      Goods tg = (Goods) req.getSession().getAttribute("tgsInfo");
	      String newFile = null;
	      MultipartRequest mr = null;
	      String oldFile = tg.getGoods_img();
	      System.out.println(oldFile);
	      
	      try {
	         
	         path = req.getSession().getServletContext().getRealPath("resources/img");
	         
	         mr = new MultipartRequest(req, path,
	               300*1024*1024, "UTF-8", new DefaultFileRenamePolicy());
	         
	         newFile = mr.getFilesystemName("goods_img");
	         if (newFile != null) {
	            newFile = URLEncoder.encode(newFile, "UTF-8").replace("+", " ");
	            System.out.println(newFile);
	         } else {
	            newFile = oldFile;
	         }
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	         return;
	      }
	      
	      try {
	         String goods_name = mr.getParameter("goods_name");
	         int goods_price = Integer.parseInt(mr.getParameter("goods_price"));
	         int goods_stock = Integer.parseInt(mr.getParameter("goods_stock"));
	         String goods_cate = mr.getParameter("goods_cate");
	         String goods_detail = mr.getParameter("goods_detail");
	         
	         tg.setGoods_name(goods_name);
	         tg.setGoods_price(goods_price);
	         tg.setGoods_stock(goods_stock);
	         tg.setGoods_cate(goods_cate);
	         tg.setGoods_detail(goods_detail);
	         tg.setGoods_img(newFile);
	         
	         System.out.println(goods_name);
	         System.out.println(goods_price);
	         System.out.println(goods_stock);
	         System.out.println(goods_cate);
	         System.out.println(goods_detail);
	         System.out.println(newFile);
	         
	         
	         if (ss.getMapper(GoodsMapper.class).goodsUpdate(tg) == 1) {
	            req.setAttribute("r", "수정 성공");
	            if (!newFile.equals(oldFile)) {
	               new File(path + "/" + URLDecoder.decode(oldFile, "UTF-8")).delete();
	            }
	            req.getSession().setAttribute("goodsRead", tg);
	         } else {
	            req.setAttribute("r", "수정 실패");
	            if(!newFile.equals(oldFile)) {
	               System.out.println(newFile);
	               new File(path + "/" + URLDecoder.decode(newFile, "UTF-8")).delete();
	            }
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	         req.setAttribute("r", "수정 실패");
	         if(!newFile.equals(oldFile)) {
	            try {
	               new File(path + "/" + URLDecoder.decode(newFile, "UTF-8")).delete();
	            } catch (UnsupportedEncodingException e1) {
	               e1.printStackTrace();
	            }
	            new File(path + "/" + newFile).delete();
	         }
	      }
	   }
}
