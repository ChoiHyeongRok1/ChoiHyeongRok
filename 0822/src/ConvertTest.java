import java.util.Arrays;
import java.util.Scanner;

public class ConvertTest {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("변환할 십진수를 입력하세요: ");
		int dec = scanner.nextInt();
		int number = dec;
		
		int[]bin = new int[8]; //결과를 기억할 배열을 선언한다. 모두 0으로 자동 초기화된다.
		int index = 0; //배열의 인덱스로 사용할 변수 
		
		// 입력되는 십진수의 크기에 따라 반복횟수가 달라지므로 무한루프로 처리한다.
		
		while(true) {
			int m = dec/2;
			int r = dec%2;	
			
			bin[index++] = r;
			
			if(m == 0) {
				break;
			}
			dec = m;
			
		}
		System.out.print(number + "를(을) 이진수로 변환하면 ");
		for(int i=index-1; i>=0; i--) {
			System.out.print(bin[i]);
		}
		System.out.println(" 입니다.");
		
	
		
		
	
	
		
		
		
		
		
	}

}
