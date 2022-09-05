package com.tjoeun.customer;

public class CustomerTest {
	
	public static void main(String[] args) {
		
//		일반 고객 객체 생성
		Customer customerLee = new Customer();
		customerLee.setCustomerID(10010);
		customerLee.setCutomerName("이몽룡");
		customerLee.setBonusPoint(1000);
		
		System.out.println("회원정보: " + customerLee.showCustomerInfo());
		System.out.println("보너스 포인트: " + customerLee.calBonus(35000));
		System.out.println("누적 보너스 포인트: " + customerLee.calPrice(5000));
		
		VIPCustomer customerLim = new VIPCustomer();
		customerLim.setCustomerID(50500);
		customerLim.setCutomerName("임꺽정");
		customerLim.setBonusPoint(10000);
		System.out.println("회원정보: " + customerLim.showCustomerInfo());
		System.out.println("실 구매 금액: " + customerLim.calSales(10000));
		System.out.println("보너스 포인트: " + customerLim.calBonus(10000));
		System.out.println("누적 보너스 포인트: " + customerLim.calPrice(10000));	
		
	}

}
