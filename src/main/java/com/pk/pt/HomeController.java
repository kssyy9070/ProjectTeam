package com.pk.pt;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pk.pt.member.MemberDAO;

@Controller
public class HomeController {

	@Autowired
	MemberDAO MDAO;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req) {

		req.setAttribute("cp", "home.jsp");

		return "index";
	}

}
