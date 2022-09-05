import java.util.Arrays;
import java.util.Scanner;

public class ConvertTest2 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("변환할 십진수를 입력하세요: ");
		int dec = scanner.nextInt();
		int number = dec;
		
		int[]hex = new int[8]; //결과를 기억할 배열을 선언한다. 모두 0으로 자동 초기화된다.
		int index = 0; //배열의 인덱스로 사용할 변수 
		
		// 입력되는 십진수의 크기에 따라 반복횟수가 달라지므로 무한루프로 처리한다.
		
		while(true) {
			int m = dec/16;
			int r = dec%16;	
			
			hex[index++] = r;
			
			if(m == 0) {
				break;
			}
			dec = m;
			
			
		}
		char[]h = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
				System.out.print(number + "를(을) 16진수로 변환하면 ");
		
		for(int i=index-1; i>=0; i--) {
			System.out.print(h[hex[i]]);
		}
		System.out.println(" 입니다.");
		
	
		
		
	
	
		
		
		
		
		
	}

}
