package com.pk.pt.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pk.pt.goods.GoodsDAO;

@Controller
public class MemberController {

	@Autowired
	private MemberDAO MDAO;
	
	@Autowired
	private GoodsDAO GDAO;
	
	@RequestMapping(value = "/member.join.go",method = RequestMethod.GET)
	public String goJoinMember(HttpServletRequest req) {
		req.setAttribute("cp", "member/join.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/member.join",method = RequestMethod.POST)
	public String joinMember(Member m,HttpServletRequest req) {
		MDAO.join(m, req);
		GDAO.getAllGoods(req);
		req.setAttribute("cp", "home.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/member.login.go",method = RequestMethod.GET)
	public String goLoginMember(HttpServletRequest req) {
		req.setAttribute("cp", "member/login.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/member.login",method = RequestMethod.POST)
	public String loginMember(Member m, HttpServletRequest req) {
		MDAO.login(m, req);
		GDAO.getAllGoods(req);
		req.setAttribute("cp", "home.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/member.logout", method = RequestMethod.GET)
	public String doLogout(HttpServletRequest req) {
		MDAO.logout(req);
		GDAO.getAllGoods(req);
		req.setAttribute("cp", "home.jsp");

		return "index";
	}
	
	@RequestMapping(value = "/member.mypage.go", method = RequestMethod.GET)
	public String goMyPage(HttpServletRequest req) {
		req.setAttribute("cp", "member/mypage.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/member.update", method = RequestMethod.POST)
	public String update(Member m,HttpServletRequest req) {
		MDAO.update(m, req);
		req.setAttribute("cp", "member/mypage.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/member.leave",method = RequestMethod.GET)
	public String leave(Member m,HttpServletRequest req) {
		MDAO.leave(m, req);
		GDAO.getAllGoods(req);
		req.setAttribute("cp", "home.jsp");
		return "index";
	}
}
