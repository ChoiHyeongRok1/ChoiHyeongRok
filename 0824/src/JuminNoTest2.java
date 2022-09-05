import java.util.Date;
import java.util.Scanner;

public class JuminNoTest2 {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		System.out.print("주민등록번호 13자리를 '-'없이 입력하세요: ");
		String jumin = scanner.nextLine().trim();
		
//		8304221185600
		
		
		int year = 1900 + (jumin.charAt(0) - '0') * 10 + (jumin.charAt(1) -48);
		System.out.println(year);

		Date date = new Date();
		
		int age = date.getYear() + 1900 - year;
		
		int month = ((jumin.charAt(2) -'0') + (jumin.charAt(3) -'0'));
		
		
		if(month < date.getMonth()) {
			System.out.println(age);		
		}else {
			System.out.println(age+1);
		}
		
//		Integer.parseInt(): 인수로 지정된 문자열을 정수로 변환한다.
//		Double.parseDouble(): 인수로 지정된 문자열을 실수로 변환한다.
//		Boolean.parseBoolean(): 인수로 지정된 문자열을 논리값(true, false)로 변환한다.
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
