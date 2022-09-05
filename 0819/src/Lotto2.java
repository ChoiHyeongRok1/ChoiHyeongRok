
import java.util.Arrays;
import java.util.Collections;
import java.util.Random;
import java.util.Scanner;

public class Lotto2 {
	public static void main(String[] args) {

		// 추첨기를 만든다.
		int[] lotto = new int[45];

		// 추첨기에 공을 넣는다.
		for (int i = 0; i < lotto.length; i++) {
			lotto[i] = i + 1;
		}
//		System.out.println(Arrays.toString(lotto));

		show(lotto);
		

		// 섞는다
		Random random = new Random();
		for (int i = 0; i < 1000000; i++) {
			int r = random.nextInt(44) + 1;
			int temp = lotto[0];
			lotto[0] = lotto[r];
			lotto[r] = temp;
		}
		
		show(lotto);
		
					
		Scanner scanner = new Scanner(System.in);
		System.out.print("금액을 입력하시오: ");
		int num = scanner.nextInt();
		if (num % 1000 == 0) {
			System.out.println();
		} else {
			System.out.println("잔액: " + num % 1000);
		}
				
		for (int k = 0; k <= (num / 1000)-1; k++) {
			for (int i = 0; i < 1000000; i++) {
				int r = random.nextInt(44) + 1;
				int temp = lotto[0];
				lotto[0] = lotto[r];
				lotto[r] = temp;
				}

			System.out.printf("%3d game: ");

			for (int j = 0; j < 6; j++) {
				System.out.printf("%02d ", lotto[j]);
			}
			System.out.println();
		}
		

		// 1등 번호를 출력한다.
//		System.out.print("1등 번호: ");
//		for (int i = 0; i < 6; i++) {
//			System.out.printf("%02d ", lotto[i]);
//
//		}
//		System.out.println("파워볼: " + (random.nextInt(26) +1));

	}

	private static void show(int[] lotto) {
		for (int i = 0; i < lotto.length; i++) {
			System.out.printf("%02d ", lotto[i]);
			if ((i + 1) % 10 == 0) {
				System.out.println();
			}
		}
		System.out.println("\n===================================");

	}

}
