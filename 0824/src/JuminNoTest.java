import java.util.Scanner;

public class JuminNoTest {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		System.out.print("주민등록번호 13자리를 '-'없이 입력하세요: ");
		String jumin = scanner.nextLine().trim();
		
//		8304221185600
		
//		System.out.println(jumin.charAt(6));
//		System.out.printf("%d\n", (int) jumin.charAt(6));
		
//		숫자와 문자는 표현 방법이 다르다.
//		문자'1'(0110001)과 숫자 1(00000001)은 다른 데이터로 취급된다.
		if(jumin.charAt(6) - '0' == 1 || jumin.charAt(6) - 48 == 3) {
			System.out.println("남자");
		}else {
			System.out.println("여자");
		}
		if(jumin.charAt(6) == '1' || jumin.charAt(6) == '3') {
			System.out.println("남자");
		}else {
			System.out.println("여자");
		}
		
		if(jumin.charAt(6) % 2 == 1) {
			System.out.println("남자");
		}else {
			System.out.println("여자");
		}
		
		String age = jumin.substring(0,2);
		System.out.println(age);
		
		if(jumin.charAt(6) == '3' || jumin.charAt(6) == '4') {
			
		}

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
