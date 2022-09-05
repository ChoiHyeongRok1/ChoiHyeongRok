import java.util.Scanner;

public class MagicSquareTest2 {
	
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		System.out.print("마방진의 차수를 입력하세요: ");
		
		
		while(true) {
		int row = scanner.nextInt();
		int[][] a = new int[row][row];
//		마방진을 구현할 배열이 5행 5열일 경우 최초의 "1"이 채워질 위치를 정한다.
		int i = 0, j = row/2;
		
		if(row%2==0 || row<3) {
			System.out.println("3이상의 홀수를 입력해 주세요");
			break;
		}
//		마방진에 채워질 숫자의 개수만큼 반복하며 마방진을 완성한다.
		for(int k=1; k<=Math.pow(row,2); k++) {
//			마방진에 숫자를 채운다.
			a[i][j] = k;
//			마방진에 채운 숫자(k)가 5의 배수인가 판단한다.
			if (k%row == 0) {
//				마방진에 채운 숫자가 5의 배수면 다음 숫자는 아랫줄에 채운다.
				i++;
			}else {
//				마방진에 채운 숫자가 5의 배수가 아니면 다음 숫자는 오른쪽 위 방향으로 채운다.
				if (--i == -1) {
//					행이 배열의 범위를 벗어나면 마지막 행으로 이동한다.
					i = row-1;
				}
				if(++j == row) {
//					열이 배열의 범위를 벗어나면 첫번째 열로 이동한다.
					j = 0;
				}
			}
		}
		for (i = 0; i < a.length; i++) {
			for (j = 0; j < a[i].length; j++) {
				System.out.printf("%3d ", a[i][j]);
			}
			System.out.println();
		}
		}
		
	}

}
