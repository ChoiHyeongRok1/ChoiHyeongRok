import java.util.Random;

public class DiveTest3 {
	public static void main(String[] args) {

		Random random = new Random();

		int[] count = new int[6];

		for (int i = 0; i < 10; i++) {
//			System.out.println(random.nextInt(6) + 1);
//			int dice = random.nextInt(6) + 1;
//			System.out.println(dice);
			count[random.nextInt(6)]++;
		}

		for (int i = 0; i < count.length; i++) {
			System.out.println(i + 1 + "의 개수: " + count[i]);
		}

	}

}