import java.util.Scanner;

public class ScannerTest3 {
	
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		
		// 키보드로 1문자 입력받기
		System.out.println("continue?(y/n)");
		char confirm = scanner.nextLine().charAt(0);
		System.out.println(confirm);
		
	}

}
