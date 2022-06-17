package com.pk.pt.review;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewDAO RDAO;
	
	@RequestMapping(value = "/review.reg",method = RequestMethod.POST)
	public String regReview(Review r ,HttpServletRequest req) {
		RDAO.regReview(r, req);
		RDAO.getReview(r, req);
		req.setAttribute("cp", "goods/detail.jsp");
		return "index";
	}

}
