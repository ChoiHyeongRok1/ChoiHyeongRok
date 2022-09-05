
public class Ranking {
	public static void main(String[] args) {

		int[] score = { 80, 100, 70, 100, 90 };
//		석차를 기억하는 기억장소는 1로 초기화시킨다.

		int[] rank = new int[score.length];
		for (int i = 0; i < rank.length; i++) {
			rank[i] = 1;
		}

		for (int i = 0; i < score.length; i++) {
			for (int j = 0; j < score.length; j++) {
				if (score[i] < score[j]) {
					rank[i]++;
				}

			}
		}
		for(int i=0; i<rank.length; i++) {
			System.out.printf("%3d점은 %d등 입니다.\n", score[i], rank[i]);
		}

	}

}
