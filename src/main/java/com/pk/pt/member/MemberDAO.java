package com.pk.pt.member;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberDAO {

	@Autowired
	private SqlSession ss;

	public void join(Member m, HttpServletRequest req) {
		try {
			m.setTm_id(req.getParameter("tm_id"));
			m.setTm_pw(req.getParameter("tm_pw"));
			m.setTm_name(req.getParameter("tm_name"));

			m.setTm_addr1(req.getParameter("tm_addr1"));
			m.setTm_addr2(req.getParameter("tm_addr2"));
			m.setTm_addr3(req.getParameter("tm_addr3"));
	
			m.setTm_phone(req.getParameter("tm_phone"));

			if (ss.getMapper(MemberMapper.class).join(m) == 1) {
				req.setAttribute("r", "가입 성공");
			}
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("r", "가입 실패");
		}
	}

	public void login(Member m, HttpServletRequest req) {
		try {

			String tm_id = req.getParameter("tm_id");
			String tm_pw = req.getParameter("tm_pw");

			Member inputMember = new Member(tm_id, tm_pw, null, null, null, null, null);

			Member dbMember = ss.selectOne(("login"), inputMember);

			if (dbMember != null) {
				if (tm_pw.equals(dbMember.getTm_pw())) {
					req.getSession().setAttribute("loginMember", dbMember);
					req.getSession().setMaxInactiveInterval(100);
					req.setAttribute("r", "로그인 성공 ");
				} else {
					req.setAttribute("r", "비밀번호 오류");
				}
			} else {
				req.setAttribute("r", "미가입 ID");

			}
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("r", "DB 문제");
		}
	}

	public void logout(HttpServletRequest req) {
		req.getSession().setAttribute("loginMember", null);
	}

	public void update(Member m, HttpServletRequest req) {
		try {
			String tm_id = req.getParameter("tm_id");
			String tm_ppw = req.getParameter("tm_ppw");
			String tm_pw = req.getParameter("tm_pw");
			String tm_addr1 = req.getParameter("tm_addr1");
			String tm_addr2 = req.getParameter("tm_addr2");
			String tm_addr3 = req.getParameter("tm_addr3");
			
			m = (Member)req.getSession().getAttribute("loginMember");
			
			if (tm_ppw.equals(m.getTm_pw())) {
				m.setTm_id(tm_id);
				m.setTm_pw(tm_pw);
				m.setTm_addr1(tm_addr1);
				m.setTm_addr2(tm_addr2);
				m.setTm_addr3(tm_addr3);
				ss.getMapper(MemberMapper.class).update(m);
				req.setAttribute("r", "수정 성공");
			} else {
				req.setAttribute("r", "비밀번호 오류");
			}

		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("r", "DB 문제");
		}
	}

	public void leave(Member m, HttpServletRequest req) {
		try {
			m = (Member)req.getSession().getAttribute("loginMember");
			
			if (ss.getMapper(MemberMapper.class).leave(m)==1) {
				logout(req);
				req.setAttribute("r", "탈퇴 성공");
				
			}
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("r", "탈퇴 실패");
		}
	}
}
