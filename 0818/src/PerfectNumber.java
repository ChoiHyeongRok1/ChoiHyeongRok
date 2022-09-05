import java.util.Scanner;

public class PerfectNumber {
	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		System.out.print("완전수인가 판단할 숫자를 입력하세요: ");
		int number = scanner.nextInt();

		int sum = 0; // 자기 자신을 제외한 약수의 합계를 기억할 변수
		for (int i = 1; i <= number / 2; i++) {
			if (number % i == 0) {
				System.out.println(i);
				sum += i; // 약수의 합계를 계산한다.
			}
		}

		// 완전수인가 (약수의 합이 자신과 같은가) 판단한다.

		if (number == sum) {
			System.out.println("는 완전수입니다");
		} else {
			System.out.println("는 완전수가 아닙니다");
		}

	}

}
