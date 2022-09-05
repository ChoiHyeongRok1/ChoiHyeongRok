import java.util.Scanner;

public class ScoreTest {

	public static void main(String[] args) {
		
		Scanner scanner  = new Scanner(System.in);
		System.out.print("3과목 점수를 입력하세요: ");
		int java = scanner.nextInt();
		int jsp = scanner.nextInt();
		int spring = scanner.nextInt();
		
		int total = java + jsp + spring;
		double average = (double)total / 3;
		
		System.out.println("총점: " + total + "점, 평균 : " + average);
		System.out.printf("총점: %3d점, 평균: %6.2f\n", total, average);
		
		if(average>=90) {
			System.out.println("A");
		} else if(average >= 80) {
			System.out.println("B");
		} else if(average >= 70) {
			System.out.println("C");
		} else if(average >= 60) {
			System.out.println("D");
		} else {
			System.out.println("F");
		}
		
				
 }
}