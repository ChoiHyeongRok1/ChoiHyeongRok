package com.tjoeun.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.tjoeun.vo.CategoryVO;

public class CategoryDAO {
	private static CategoryDAO instance = new CategoryDAO();
	private CategoryDAO() {}
	public static CategoryDAO getInstance() {
		return instance;
	}
	
//	CategoryService 클래스에서 호출되는 mapper와 테이블에 저장할 메인 카테고리가 저장된 객체를 넘겨받고
//	테이블에 메인 카테고리를 저장하는 category.xml 파일의 insert sql 명령을 실행하는 메소드
	public void insert(SqlSession mapper, CategoryVO vo) {
		System.out.println("CategoryDAO의 Insert() 메소드");
		mapper.insert("insert", vo);
	}
	
//	CategoryService 클래스에서 호출되는 mapper를 넘겨받고 테이블에 전체 카테고리 목록을 얻어오는
//	category.xml 파일의 select sql 명령을 실행하는 메소드
	public ArrayList<CategoryVO> selectList(SqlSession mapper) {
		System.out.println("CategoryDAO의 Insert() 메소드");
		return (ArrayList<CategoryVO>) mapper.selectList("selectList");
	}
	
//	CategoryService 클래스에서 호출되는 mapper와 gup와 seq가 저장된 Hashmap 객체를 넘겨받고 같은 카테고리 
//	그룹(gup)에서 조건에 만족하는 카테고리 출력 순서를 조정하기 위해 seq를 1씩 증가시키는 category.xml 파일의
//	update sql 명령을 실행하는 메소드
	public void increment(SqlSession mapper, HashMap<String, Integer> hmap) {
		System.out.println("CategoryDAO의 increment() 메소드");
		mapper.update("increment", hmap);
	}
	
//	CategoryService 클래스에서 호출되는 mapper와 테이블에 저장할 서브 카테고리 정보가 저장된 객체를 넘겨받고
//	테이블에 서브 카테고리를 저장하는 category.xml 파일의 insert sql 명령을 실행하는 메소드
	public void reply(SqlSession mapper, CategoryVO vo) {
		System.out.println("CategoryDAO의 reply() 메소드");
		mapper.insert("reply", vo);
	}
	
	
	public CategoryVO selectByIdx(SqlSession mapper, int idx) {
		System.out.println("CategoryDAO의 selectByIdx() 메소드");
		return (CategoryVO) mapper.selectOne("selectByIdx", idx);
	}
	
	public void delete(SqlSession mapper, int idx) {
		System.out.println("CategoryDAO의 delete() 메소드");
		mapper.delete("delete", idx);
	}
	public void deleteUpdate(SqlSession mapper, int idx) {
		System.out.println("CategoryDAO의 deleteUpdate() 메소드");
		mapper.update("deleteUpdate", idx);
	}
	
	
	public void deleteCheck(SqlSession mapper, int idx) {
		System.out.println("CategoryDAO의 deleteCheck() 메소드");
		mapper.update("deleteCheck", idx);
	}
	public void restoreCheck(SqlSession mapper, int idx) {
		System.out.println("CategoryDAO의 restoreCheck() 메소드");
		mapper.update("restoreCheck", idx);
	}
	public void update(SqlSession mapper, CategoryVO vo) {
		System.out.println("CategoryDAO의 update() 메소드");
		mapper.update("update", vo);
	}
	public void deleteReport(SqlSession mapper, int idx) {
		System.out.println("CategoryDAO의 update() 메소드");
		mapper.update("deleteReport", idx);
	}
	public ArrayList<CategoryVO> deleteList(SqlSession mapper, CategoryVO vo) {
		System.out.println("CategoryDAO의 deleteList() 메소드");
		return (ArrayList<CategoryVO>) mapper.selectList("deleteList", vo);
	}
	public ArrayList<CategoryVO> selectGup(SqlSession mapper, int gup) {
		System.out.println("CategoryDAO의 selectGup() 메소드");
		return (ArrayList<CategoryVO>) mapper.selectList("selectGup", gup);
	}
	public void reSeq(SqlSession mapper, HashMap<String, Integer> hmap) {
		System.out.println("CategoryDAO의 reSeq() 메소드");
		mapper.update("reSeq", hmap);
	}
	
	
	
}













































