package com.tjoeun.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.tjoeun.vo.FreeboardVO;

public class FreeboardDAO {
	private static FreeboardDAO instance = new FreeboardDAO();
	private FreeboardDAO() {}
	public static FreeboardDAO getInstance() {
		return instance;
	}
	public void insert(SqlSession mapper, FreeboardVO vo) {
		System.out.println("FreeboardDAO의 insert() 메소드");
		mapper.insert("insert", vo);
	}
	public int selectCount(SqlSession mapper) {
		System.out.println("FreeboardDAO의 selectCount() 메소드");
		return (int) mapper.selectOne("selectCount");
	}
	
	public ArrayList<FreeboardVO> selectList(SqlSession mapper, HashMap<String, Integer> hmap) {
		System.out.println("FreeboardDAO의 selectList() 메소드");
		return (ArrayList<FreeboardVO>) mapper.selectList("selectList", hmap);
	}
	public void increment(SqlSession mapper, int idx) {
		System.out.println("FreeboardDAO의 increment() 메소드");
		mapper.update("increment", idx);
	}
	public FreeboardVO selectByIdx(SqlSession mapper, int idx) {
		System.out.println("FreeboardDAO의 selectByIdx() 메소드");
		return (FreeboardVO) mapper.selectOne("selectByIdx", idx);
	}
	public void delete(SqlSession mapper, int idx) {
		System.out.println("FreeboardDAO의 delete() 메소드");
		mapper.delete("delete", idx);
	}
	public ArrayList<FreeboardVO> selectNotice(SqlSession mapper) {
		System.out.println("FreeboardDAO의 selectNotice() 메소드");
		return (ArrayList<FreeboardVO>) mapper.selectList("selectNotice");
	}
	public void update(SqlSession mapper, FreeboardVO vo) {
		System.out.println("FreeboardDAO의 update() 메소드");
		mapper.update("update", vo);
	}
	
}
















