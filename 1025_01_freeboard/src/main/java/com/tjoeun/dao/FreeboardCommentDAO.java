package com.tjoeun.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.tjoeun.vo.FreeboardCommentVO;

public class FreeboardCommentDAO {
	private static FreeboardCommentDAO instance = new FreeboardCommentDAO();
	private FreeboardCommentDAO() {}
	public static FreeboardCommentDAO getInstance() {
		return instance;
	}
	public int insertComment(SqlSession mapper, FreeboardCommentVO co) {
		System.out.println("FreeboardCommentDAO의 insertComment()");
		// insert, delete, update sql 명령의 실행 결과를 리턴시키면 sql명령이 성공적으로 실행된
		// 횟수가 리턴된다.
		return mapper.insert("insertComment", co);
	}
	public int commentCount(SqlSession mapper, int idx) {
		System.out.println("FreeboardCommentDAO의 commentCount()");
		return (int) mapper.selectOne("commentCount", idx);
	}
	public ArrayList<FreeboardCommentVO> selectCommentList(SqlSession mapper, int idx) {
		System.out.println("FreeboardCommentDAO의 selectCommentList()");
		return (ArrayList<FreeboardCommentVO>) mapper.selectList("selectCommentList", idx);
	}
	public FreeboardCommentVO selectCommentByIdx(SqlSession mapper, int idx) {
		System.out.println("FreeboardCommentDAO의 selectCommentByIdx()");
		return (FreeboardCommentVO) mapper.selectOne("selectCommentByIdx", idx);
	}
	public void updateComment(SqlSession mapper, FreeboardCommentVO co) {
		System.out.println("FreeboardCommentDAO의 updateComment()");
		mapper.update("updateComment", co);
	}
	public void deleteComment(SqlSession mapper, FreeboardCommentVO co) {
		System.out.println("FreeboardCommentDAO의 deleteComment()");
		mapper.delete("deleteComment", co);
	}
	
	
}
























