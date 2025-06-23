package com.dino.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dino.dao.ProductDAO;
import com.dino.dto.MemberVO;
import com.dino.dto.ProductVO;

@WebServlet("/productList.do")
public class ProductListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");

		if (loginUser == null || loginUser.getAdmin() != 1) {
			// 로그인 X 또는 일반회원일 경우
			request.setAttribute("message", "관리자만 접근할 수 있습니다.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.do");
			dispatcher.forward(request, response);
			return;
		}

		ProductDAO pDao = ProductDAO.getInstance();
		List<ProductVO> productList = pDao.selectAllProducts();
		request.setAttribute("productList", productList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("product/productList.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
