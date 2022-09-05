import java.util.Scanner;

public class EuclidTest2 {
	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		System.out.print("숫자 2개를 입력하세요: ");
		int A = scanner.nextInt();
		int B = scanner.nextInt();
		int R = 1;

		int HIGH, LOW;
		if (A > B) {
			HIGH = A;
			LOW = B;
		} else {
			LOW = A;
			HIGH = B;
		}
		
		
		while(R > 0) {
			R = HIGH % LOW;
			HIGH = LOW;
			LOW = R;
			
			
		}
		int L = A*B / HIGH;
		System.out.println("최대공약수: " + HIGH + ", 최소공배수: " + L);

//		while (true) {
//
//			int R = HIGH % LOW;
//
//			if (R == 0) {
//				break;
//			}
//
//			HIGH = LOW;
//			LOW = R;
//
//		}
//		System.out.println("최대공약수: " + LOW + ", 최소공배수: " + A * B / LOW);

	}

}
