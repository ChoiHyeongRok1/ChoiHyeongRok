package com.tjoeun.service;

import org.apache.ibatis.session.SqlSession;

import com.tjoeun.dao.FreeboardCommentDAO;
import com.tjoeun.mybatis.MySession;
import com.tjoeun.vo.FreeboardCommentList;
import com.tjoeun.vo.FreeboardCommentVO;

public class FreeboardCommentService {
	
	private static FreeboardCommentService instance = new FreeboardCommentService();
	
	private FreeboardCommentService() {}
	
	public static FreeboardCommentService getInstance() {
		return instance;
	}
	
//	commentOK.jsp에서 호출되는 댓글로 저장할 정보가 저장된 객체를 넘겨받고 mapper를 얻어온 후
//	FreeboardCommentDAO 클래스의 댓글을 저장하는 insert sql 명령을 실행하는 메소드를 호출하는 메소드
	public boolean insertComment(FreeboardCommentVO co) {
		System.out.println("FreeboardCommentService의 insertComment()");
		SqlSession mapper = MySession.getSession();
		int result = FreeboardCommentDAO.getInstance().insertComment(mapper, co);
		if(result == 1) {
			FreeboardCommentDAO.getInstance().insertComment(mapper, co);
			mapper.commit();
			mapper.close();
			return true;
		}else {
			mapper.close();
			return false;
		}
	}
	
	public int commentCount(int idx) {
		System.out.println("FreeboardCommentService의 commentCount()");
		SqlSession mapper = MySession.getSession();
		int commentCount = FreeboardCommentDAO.getInstance().commentCount(mapper, idx);
		mapper.close();
		return commentCount;
	}
	
	public FreeboardCommentList selectCommentList(int idx) {
		System.out.println("FreeboardCommentService의 selectCommentList()");
		SqlSession mapper = MySession.getSession();
		FreeboardCommentList freeboardCommentList = new FreeboardCommentList();
		freeboardCommentList.setList(FreeboardCommentDAO.getInstance().selectCommentList(mapper, idx));
		mapper.close();
		return freeboardCommentList;
	}
	
	public boolean updateComment(FreeboardCommentVO co) {
		System.out.println("FreeboardCommentService의 updateComment()");
		SqlSession mapper = MySession.getSession();
		FreeboardCommentDAO dao = FreeboardCommentDAO.getInstance();
		FreeboardCommentVO original = dao.selectCommentByIdx(mapper, co.getIdx());
		if(original.getPassword().trim().equals(co.getPassword().trim())) {
			dao.updateComment(mapper, co);
			mapper.commit();
			mapper.close();
			return true;
		} else {
			mapper.close();
			return false;
		}
	} 
	
	public boolean deleteComment(FreeboardCommentVO co) {
		System.out.println("FreeboardCommentService의 deleteComment()");
		SqlSession mapper = MySession.getSession();
		FreeboardCommentDAO dao = FreeboardCommentDAO.getInstance();
		FreeboardCommentVO original = dao.selectCommentByIdx(mapper, co.getIdx());
		if(original.getPassword().trim().equals(co.getPassword().trim())) {
			dao.deleteComment(mapper, co);
			mapper.commit();
			mapper.close();
			return true;
		} else {
			mapper.close();
			return false;
		}
	
	}
	
}

























