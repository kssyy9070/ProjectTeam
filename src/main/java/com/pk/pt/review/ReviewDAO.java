package com.pk.pt.review;

import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Service
public class ReviewDAO {

	@Autowired
	SqlSession ss;

	public void getReview(Review r, HttpServletRequest req) {
		try {
			String goods_id = req.getParameter("goods_id");
			r.setGoods_id(goods_id);

			List<Review> rvs = ss.getMapper(ReviewMapper.class).getReview(r);
			req.setAttribute("rvs", rvs);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void regReview(Review r, HttpServletRequest req) {
		try {

			String path = req.getSession().getServletContext().getRealPath("resources/img/review");

			MultipartRequest mr = new MultipartRequest(req, path, 30 * 1024 * 1024, "UTF-8",
					new DefaultFileRenamePolicy());
			String tr_g_id = mr.getParameter("tr_g_id");
			String tr_writer = mr.getParameter("tr_writer");
			String tr_img = mr.getFilesystemName("tr_img");
			String tr_txt = mr.getParameter("tr_txt");

			System.out.println(tr_g_id);
			System.out.println(tr_writer);
			System.out.println(tr_img);
			System.out.println(tr_txt);

			tr_img = URLEncoder.encode(tr_img, "UTF-8");

			tr_img = tr_img.replace("+", " ");

			r.setTr_g_id(tr_g_id);
			r.setTr_writer(tr_writer);
			r.setTr_img(tr_img);
			r.setTr_txt(tr_txt);

			if (ss.getMapper(ReviewMapper.class).regReview(r) == 1) {
				req.setAttribute("r", "리뷰 등록 성공");
			}

		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("r", "리뷰 등록 실패");
		}

	}

}
