package com.dino.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.dino.dto.BoardVO;
import util.DBManager;

public class BoardDAO {
	private BoardDAO() {}
	private static BoardDAO instance = new BoardDAO();
	public static BoardDAO getInstance() {
		return instance;
	}
	
	
	
//	최근 등록한 게시글이 먼저 나오도록 게시글 목록 출력
	public List<BoardVO> selectAllBoards(){
		String sql = "select * from board order by num desc";
		List<BoardVO> list = new ArrayList<BoardVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			System.out.println("실제 연결된 DB URL: " + conn.getMetaData().getURL());
			System.out.println("실제 연결된 사용자: " + conn.getMetaData().getUserName());
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				BoardVO bVo = new BoardVO();
				bVo.setNum(rs.getInt("num"));
				bVo.setUsername(rs.getString("username"));
				bVo.setEmail(rs.getString("email"));
				bVo.setPass(rs.getString("pass"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setReadcount(rs.getInt("readcount"));
				bVo.setWritedate(rs.getTimestamp("writedate"));
				list.add(bVo);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, stmt, rs);
		}
		
		return list;
	}
	
	
	
//	전달인자로 받은 VO 객체를 board 테이블에 삽입
	public void insertBoard(BoardVO bVo) {
		String sql = "insert into board(username, email, pass, title, content) values(?, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bVo.getUsername());
			pstmt.setString(2, bVo.getEmail());
	        pstmt.setString(3, bVo.getPass());
	        pstmt.setString(4, bVo.getTitle());
	        pstmt.setString(5, bVo.getContent());
	        pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("글 작성 중 오류가 발생했습니다.", e);
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	
	
//	게시글 상세 보기할 때마다 글 번호 증가
	public void updateReadCount(String num) {
		String sql = "update board set readcount=readcount+1 where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	
	
//	테이블에서 게시글 번호로 해당 게시글을 찾아 게시글 정보를 BoardVO객체로
	public BoardVO selectOneBoardByNum(String num) {
		String sql = "select * from board where num = ?";
		BoardVO bVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				bVo = new BoardVO();
				bVo.setNum(rs.getInt("num"));
				bVo.setUsername(rs.getString("username"));
				bVo.setPass(rs.getString("pass"));
				bVo.setEmail(rs.getString("email"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setWritedate(rs.getTimestamp("writedate"));
				bVo.setReadcount(rs.getInt("readcount"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		return bVo;
	}
	
	
//	매개변수로 받은 VO 객체 내의 코드로 board 테이블에서 검색해서 VO객체에 저장된 정보로 게시글 정보를 수정
	public void updateBoard(BoardVO bVo) {
		String sql = "UPDATE board SET username=?, email=?, pass=?, title=?, content=? WHERE num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bVo.getUsername());
			pstmt.setString(2, bVo.getEmail());
			pstmt.setString(3, bVo.getPass());
			pstmt.setString(4, bVo.getTitle());
			pstmt.setString(5, bVo.getContent());
			pstmt.setInt(6, bVo.getNum());
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	
//	board 테이블에서 게시글 번호와 비밀번호가 일치하는 게시글 찾아 BoardVO 객체로 리턴
	public BoardVO checkPassWord(String pass, String num) {
		String sql = "select * from board where pass=? and num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardVO bVo = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pass);
			pstmt.setString(1, num);
			
			if(rs.next()) {
				bVo = new BoardVO();
				bVo.setNum(rs.getInt("num"));
				bVo.setUsername(rs.getString("username"));
				bVo.setEmail(rs.getString("email"));
				bVo.setPass(rs.getString("pass"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setReadcount(rs.getInt("readcount"));
				bVo.setWritedate(rs.getTimestamp("writedate"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		return bVo;
	}
	
	
//	게시글 번호에 해당하는 게시글 정보 삭제
	public void deleteBoard(String num) {
		String sql = "delete from board where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
}
