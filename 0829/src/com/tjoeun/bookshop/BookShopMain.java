package com.tjoeun.bookshop;

import java.security.PublicKey;
import java.util.Date;

public class BookShopMain {
	
	public static void main(String[] args) {
		BookVO book1 = new BookVO("java", "홍길동", "더조은출판사", new Date(2020, 7, 25), 29.99);		
		BookVO book2 = new BookVO("java", "한길동", "더조은출판사", new Date(2020, 7, 25), 29.99);
		BookVO book3 = new BookVO("java", "김길동", "더조은출판사", new Date(2020, 7, 25), 29.99);
		BookVO book4 = new BookVO("java", "이길동", "더조은출판사", new Date(2020, 7, 25), 29.99);
		BookVO book5 = new BookVO("java", "박길동", "더조은출판사", new Date(2020, 7, 25), 29.99);
		BookVO book6 = new BookVO("java", "한길동", "더조은출판사", new Date(2020, 7, 25), 29.99);

		BookList bookList = new BookList();
		
		bookList.addBook(book1);
		bookList.addBook(book2);
		bookList.addBook(book3);
		bookList.addBook(book4);
		bookList.addBook(book5);
		bookList.addBook(book6);
		
		System.out.println(bookList.toString());
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
