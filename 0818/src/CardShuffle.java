import java.util.Arrays;
import java.util.Random;

public class CardShuffle {
	public static void main(String[] args) {
		// 두 기억장소에 저장된 값 교환하기
//		int a = 3, b=4;
//		System.out.println("a= " + a + ", b= " + b);
//		
//		int temp = a;
//		a = b;
//		b = temp;
//
//		System.out.println("a= " + a + ", b= " + b);

		// cards 라는 int형 배열을 만들고 0 ~ 51로 초기화한다.

		int[] cards = new int[52];
		for (int i = 0; i < cards.length; i++) {
			cards[i] = i;
		}

		String[] number = { "A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K" };
		String[] symbol = { "♠", "♥", "♣", "◈" };

		for (int i = 0; i < cards.length; i++) {
			System.out.printf("%2s ", number[cards[i] % 13]);
//			System.out.printf("%2d ", cards[i]);
//			System.out.printf("%2s ", number[cards[i]]);
			if ((i + 1) % 13 == 0) {
				System.out.println();
			}
		}
		for (int i = 0; i < cards.length; i++) {
			System.out.printf("%s%2s", symbol[cards[i] / 13], number[cards[i] % 13]);
			if ((i + 1) % 13 == 0) {
				System.out.println();
			}
		}
		System.out.println("====================================");
		Random random = new Random();
		for (int i = 0; i < 10000; i++) {
			int r = random.nextInt(51) + 1;
			int temp = cards[0];
			cards[0] = cards[r];
			cards[r] = temp;
		}
		for (int i = 0; i < cards.length; i++) {
			System.out.printf("%s%2s", symbol[cards[i] / 13], number[cards[i] % 13]);
			if ((i + 1) % 13 == 0) {
				System.out.println();
			}
		}

	}
}
