package com.tjoeun.memoList;

import java.text.SimpleDateFormat;
import java.util.Date;

// 메모 1건을 기억하는 클래스
public class MemoVO {

	public static int count; // 자동증가에 사용할 정적 필드
	private int idx; // 글번호 => 자동증가
	private String name; // 작성자 이름
	private String password; // 비밀번호
	private String memo; // 메모
	private Date writeDate; // 작성일 => 컴퓨터 시스템의 날짜와 시간으로 자동설정
	
	public MemoVO() {
		
	}
	public MemoVO(String name, String password, String memo) {
		idx = ++count;
		this.name = name;
		this.password = password;
		this.memo = memo;
		writeDate = new Date();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}
	@Override
	public String toString() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy / MM / dd(E) ");
		return String.format("%d. %s(%s)님이 %s에 남긴글\n%s", idx, name, password, sdf.format(writeDate), memo);
	}
	public void setIdx(int i) {
		// TODO Auto-generated method stub
		
	}

	
	
	
	

}
