import java.util.Date;
import java.util.Scanner;

public class JuminNoTest3 {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		System.out.print("주민등록번호 13자리를 '-'없이 입력하세요: ");
		String jumin = scanner.nextLine().trim();
		
//		8304221185600
		Date date = new Date();
		
		int a = 0;
		
		if((jumin.charAt(6) - '0') < 3) {
			a = 1900;
		}else {
			a = 2000;
		}
		
		int year = a + (jumin.charAt(0) - '0') * 10 + (jumin.charAt(1) -48);
		System.out.println(year);

		
		int age = date.getYear() + 1900 - year;
		
		int month = (jumin.charAt(2)-'0') * 10 + (jumin.charAt(3)-'0');
		
		int day = (jumin.charAt(4)-'0') * 10 + (jumin.charAt(5)-'0');
		
		
		if(month == date.getMonth()) {
			if(day < date.getDate()) {
				System.out.println(age-1);
			}else {
				System.out.println(age);
			}
		}
		else if(month < date.getMonth()){
			System.out.println(age-1);
		}else {
			System.out.println(age);
		}
		
		int[]c = {2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5};
		
		int i = 0;
		
		for(i=0; i<=c.length; i++) {
			int b = (jumin.charAt(i)-'0') * c[i];
			int sum = b++;
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
