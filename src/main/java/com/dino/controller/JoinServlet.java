package com.dino.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dino.dao.MemberDAO;
import com.dino.dto.MemberVO;

@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/join.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("UTF-8");
		
		String username = request.getParameter("username");
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String phone = request.getParameter("phone");
		String admin = request.getParameter("admin");
		
		System.out.println("가입 정보 확인 ↓↓↓");
		System.out.println("username: " + username);
		System.out.println("userid: " + userid);
		System.out.println("pwd: " + pwd);
		System.out.println("phone: " + phone);
		System.out.println("admin: " + admin);
		System.out.println("실제 insert 실행!");
		
		MemberVO mVo = new MemberVO();
		mVo.setUsername(username);
		mVo.setUserid(userid);
		mVo.setPwd(pwd);
		mVo.setPhone(phone);
		mVo.setAdmin(Integer.parseInt(admin));
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.insertMember(mVo);
		
		HttpSession session = request.getSession();
		
		if(result == 1) {
			session.setAttribute("userid", mVo.getUserid());
			session.setAttribute("message", "회원가입에 성공했습니다.");
		}else {
			request.setAttribute("message", "회원가입에 실패했습니다.");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/login.jsp");
		dispatcher.forward(request, response);
	}

}
