package com.dino.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dino.dao.BoardDAO;
import com.dino.dto.BoardVO;

public class BoardUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/board/boardUpdate.jsp";
		String num = request.getParameter("num");
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.updateReadCount(num);
		BoardVO bVO = bDao.selectOneBoardByNum(num);
		request.setAttribute("board", bVO);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request,  response);
	}


}
