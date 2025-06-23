package com.dino.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dino.dao.MemberDAO;
import com.dino.dto.MemberVO;

@WebServlet("/memberUpdate.do")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		MemberDAO mDao = MemberDAO.getInstance();
		MemberVO mVo = mDao.getMember(userid);
		request.setAttribute("mVo", mVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/memberUpdate.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	    
	    String userid = request.getParameter("userid");
	    String pwd = request.getParameter("pwd");
	    String phone = request.getParameter("phone");
	    String admin = request.getParameter("admin");

	    MemberVO mVo = new MemberVO();
	    mVo.setUserid(userid);
	    mVo.setPwd(pwd);
	    mVo.setPhone(phone);
	    mVo.setAdmin(Integer.parseInt(admin));

	    MemberDAO mDao = MemberDAO.getInstance();
	    mDao.updateMemeber(mVo);
	    
	    MemberVO updatedUser = mDao.getMember(userid);
	    request.getSession().setAttribute("loginUser", updatedUser);

	    request.setAttribute("message", "회원정보가 수정되었습니다.");

	    RequestDispatcher dispatcher = request.getRequestDispatcher("memberMain.jsp");
	    dispatcher.forward(request, response);
	}

}
