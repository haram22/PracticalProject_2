package com.crud.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.crud.bean.BoardVO;
import com.crud.common.JDBCUtil;

public class BoardDAO {
	
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;

	private final String BOARD_INSERT = "insert into Members (name, age, school, major, gender) values (?,?,?,?,?)";
	private final String BOARD_UPDATE = "update Members set name=?, age=?, school=?, major=?, gender=? where seq=?";
	private final String BOARD_DELETE = "delete from Members  where seq=?";
	private final String BOARD_GET = "select * from Members  where seq=?";
	private final String BOARD_LIST = "select * from Members order by seq desc";

	public int insertBoard(BoardVO vo) {
		System.out.println("===> JDBC로 insertBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_INSERT);
			stmt.setString(1, vo.getName());
			stmt.setString(2, vo.getAge());
			stmt.setString(3, vo.getSchool());
			stmt.setString(4, vo.getMajor());
			stmt.setString(5, vo.getGender());

			stmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	// 글 삭제
	public void deleteBoard(BoardVO vo) {
		System.out.println("===> JDBC로 deleteBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_DELETE);
			stmt.setInt(1, vo.getSeq());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int updateBoard(BoardVO vo) {
		System.out.println("===> JDBC로 updateBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_UPDATE);
			stmt.setString(1, vo.getName());
			stmt.setString(2, vo.getAge());
			stmt.setString(3, vo.getSchool());
			stmt.setString(4, vo.getMajor());
			stmt.setString(5, vo.getGender());
			stmt.setInt(6, vo.getSeq());
			
			
			System.out.println(vo.getName() + "-" + vo.getAge() + "-" + vo.getSchool() + "-" + vo.getMajor() + "-" + vo.getGender() + "-" + vo.getSeq());
			stmt.executeUpdate();
			return 1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}	
	
	public BoardVO getBoard(int seq) {
		BoardVO one = new BoardVO();
		System.out.println("===> JDBC로 getBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_GET);
			stmt.setInt(1, seq);
			rs = stmt.executeQuery();
			if(rs.next()) {
				one.setSeq(rs.getInt("seq"));
				one.setName(rs.getString("name"));
				one.setAge(rs.getString("age"));
				one.setSchool(rs.getString("school"));
				one.setMajor(rs.getString("major"));
				one.setGender(rs.getString("gender"));



				one.setCnt(rs.getInt("cnt"));
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return one;
	}
	
	public List<BoardVO> getBoardList(){
		List<BoardVO> list = new ArrayList<BoardVO>();
		System.out.println("===> JDBC로 getBoardList() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_LIST);
			rs = stmt.executeQuery();
			while(rs.next()) {
				BoardVO one = new BoardVO();
				one.setSeq(rs.getInt("seq"));
				one.setName(rs.getString("name"));
				one.setAge(rs.getString("age"));
				one.setSchool(rs.getString("school"));
				one.setMajor(rs.getString("major"));
				one.setGender(rs.getString("gender"));


				one.setRegdate(rs.getDate("regdate"));
				one.setCnt(rs.getInt("cnt"));
				list.add(one);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return list;
	}
}
