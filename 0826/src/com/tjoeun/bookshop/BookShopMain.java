package com.tjoeun.bookshop;

import java.security.PublicKey;
import java.util.Date;

public class BookShopMain {
	
	public static void main(String[] args) {
		
//		클래스 이름 객체(변수)이름 = new 생성자();
		BookVO vo = new BookVO();
//		System.out.println(vo.title);
//		System.out.println(vo);
//		클래스로 만든 객체를 출력하면 자동으로 toString() 메소드가 실행된다.
//		System.out.println(vo.toString());
		
//		도서 정보를 만든다.
//		출판일은 날짜 데이터를 만들어 BookVO 클래스의 writeDate 필드에 넣어주면 다른곳에서 사용할 일이 없다.
//		이럴 경우 익명으로 객체를 만들어 사용하면 편리하다.
		BookVO book1 = new BookVO("java", "홍길동", "더조은출판사", new Date(2020, 7, 25), 29.99);
		System.out.println(book1.getTitle());
		book1.setTitle("jsp");
		System.out.println("book1: " + book1);
		
		BookVO book2 = new BookVO("java", "한길동", "더조은출판사", new Date(2020, 7, 25), 29.99);
		BookVO book3 = new BookVO("java", "김길동", "더조은출판사", new Date(2020, 7, 25), 29.99);
		BookVO book4 = new BookVO("java", "이길동", "더조은출판사", new Date(2020, 7, 25), 29.99);
		BookVO book5 = new BookVO("java", "박길동", "더조은출판사", new Date(2020, 7, 25), 29.99);
		BookVO book6 = new BookVO("java", "한길동", "더조은출판사", new Date(2020, 7, 25), 29.99);
//		"=="를 사용해서 같은가 비교할 수 있는 데이터는 기본자료형 8가지와 null만 가능하다.
//		따라서, 클래스로 만든 객체는"=="로 비교할 수 없다.
//		String은 단일 데이터가 저장되는 클래스라서 equals() 메소드만 사용하면 저장된 내용이 같은가 다른가
//		비교할 수 있었지만 String을 제외한 사용자 정의 클래스의 객체는 단일 데이터가 아니기 때문에 별도의
//		설정을 하지 않으면 equals() 메소드로 비교할 수 없다.
		
		System.out.println("book2" + book2);
		System.out.println("book6" + book6);
		
		if(book2.getAuthor().equals(book6.getAuthor())) {
			System.out.println("같다.");
		}else {
			System.out.println("다르다.");
		}
		
//		별도의 설정을 하지 않으면 아래의 결과는 "다르다."가 출력된다.
//		클래스 객체를 비교할 때는 객체를 구성하는 모든 필드의 내용이 같은가 비교할 수 있도록 equals() 메소드를
//		내용이 동일한 객체는 hashcode를 가질 수 있도록 hashcode() 메소드를 Override시켜 사용하면 "같다."가 출력된다.
		
		if(book2.equals(book6)) {
			System.out.println("같다.");
		}else {
			System.out.println("다르다.");
		}
//		클래스에서 private으로 선언된 변수는 클래스 외부에서 접근할 수 없으므로 에러가 발생된다.
//		System.out.println(book1.author); //에러
//		private 필드에 접근하기 위해서는 getters & setters 메소드를 만들어 사용한다.
		
//	    여러권의 책 정보를 기억하는 클래스의 객체를 만든다.
		BookList bookList = new BookList(5);
		
//		책 정보를 BookList 클래스의 booklist 배열에 저장하는 메소드를 실행한다.
		bookList.addBook(book1);
		bookList.addBook(book2);
		bookList.addBook(book3);
		bookList.addBook(book4);
		bookList.addBook(book5);
		bookList.addBook(book6);
		
		System.out.println(bookList.toString());
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
