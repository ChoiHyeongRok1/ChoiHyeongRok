package com.tjoeun.syncronizedBlockTest;

//  입출금을 실행하는 스레드와 잔액을 출력하는 스레드가 공유해서 사용할 클래스
public class ShareArea {
	
	Account lee = new Account("111-11-11111", "이몽룡", 1000000);
	Account hong = new Account("222-11-11111", "홍길동", 1000000);
	
}
