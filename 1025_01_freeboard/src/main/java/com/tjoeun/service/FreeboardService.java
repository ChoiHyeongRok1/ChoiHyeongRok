package com.tjoeun.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.tjoeun.dao.FreeboardDAO;
import com.tjoeun.mybatis.MySession;
import com.tjoeun.vo.FreeboardList;
import com.tjoeun.vo.FreeboardVO;

public class FreeboardService {

	private static FreeboardService instance = new FreeboardService();
	
	private FreeboardService() {}
	
	public static FreeboardService getInstance() {
		return instance;
	}
	
//	insertOK.jsp에서 호출되는 메인글이 저장된 객체를 넘겨받고 mapper를 얻어온 후 메인글을 저장하는
//	FreeboardDAO 클래스의 insert sql 명령을 실행하는 메소드를 호출하는 메소드
	public void insert(FreeboardVO vo) {
		System.out.println("FreeboardService의 insert()");
		SqlSession mapper = MySession.getSession();
//		System.out.println("연결성공: " + mapper);
		FreeboardDAO.getInstance().insert(mapper, vo);
		mapper.commit();
		mapper.close();
	}
	
	public FreeboardList selectList(int currentPage) {
		System.out.println("FreeboardService의 selectList()");
		SqlSession mapper = MySession.getSession();
		FreeboardDAO dao = FreeboardDAO.getInstance();
		
		int pageSize = 10;
		int totalCount = dao.selectCount(mapper);
//		System.out.println(totalCount);
		
		FreeboardList freeboardList = new FreeboardList(pageSize, totalCount, currentPage);
		HashMap<String, Integer> hmap = new HashMap<>();
		hmap.put("startNo", freeboardList.getStartNo());
		hmap.put("endNo", freeboardList.getEndNo());
		freeboardList.setList(dao.selectList(mapper, hmap));
//		System.out.println(freeboardList);
		
		mapper.close();
		
		return freeboardList;
	}
	
	public void increment(int idx) {
		System.out.println("FreeboardService의 increment()");
		SqlSession mapper = MySession.getSession();
		FreeboardDAO.getInstance().increment(mapper, idx);
		mapper.commit();
		mapper.close();
	}
	
	public FreeboardVO selectByIdx(int idx) {
		System.out.println("FreeboardService의 selectByIdx()");
		SqlSession mapper = MySession.getSession();
		FreeboardVO vo = FreeboardDAO.getInstance().selectByIdx(mapper, idx);
		mapper.close();
		return vo;
	}
	
	public void delete(int idx) {
		System.out.println("FreeboardService의 delete()");
		SqlSession mapper= MySession.getSession();
		FreeboardDAO.getInstance().delete(mapper, idx);
		mapper.commit();
		mapper.close();
	}
	
	public ArrayList<FreeboardVO> selectNotice(){
		System.out.println("FreeboardService의 selectNotice()");
		SqlSession mapper = MySession.getSession();
		ArrayList<FreeboardVO> notice = FreeboardDAO.getInstance().selectNotice(mapper);
		mapper.close();
		return notice;
	}
	
	public void update(FreeboardVO vo) {
		System.out.println("FreeboardService의 update()");
		SqlSession mapper= MySession.getSession();
		FreeboardDAO.getInstance().update(mapper, vo);
		mapper.commit();
		mapper.close();
	}
	
}




















