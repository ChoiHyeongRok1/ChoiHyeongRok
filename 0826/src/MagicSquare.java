import java.util.Scanner;

public class MagicSquare {
	
	public static void main(String[] args) {
//		최초의 1이 체워지는 자리는 2차원 배열의 첫 줄 정가운데 열이다.
//		마방진에 체워진 숫자가 배열의 차수(n)의 배수면 다음 숫자는 아랫줄에 체워진다 => 행만 1증가
//		마방진에 체워진 숫자가 배열의 차수(n)의 배수가 아니면 다음 숫자는 오른쪽 위 방향에 채워진다 => 행은 1감소, 열은 1증가
//		행이 배열의 범위를 벗어나면 마지막 행으로 수정하고 열이 배열의 범위를 첫번째 열로 수정한다.
		Scanner scanner = new Scanner(System.in);
		System.out.print("마방진의 차수를 입력하세요: ");
		int row = scanner.nextInt();
		int[][] a = new int[row][row];
		int i = 0;
		int j = row/2 + 1;
		int n = 0;
		int k = a.length;
		boolean flag = false;
		
		while(true) {
			i++;
			j++;
			for(int p=1; p<k; p++) {
				n++;
				if(n > Math.pow(row,2)) {
					flag = true;
					break;
				}
				a[i][j] = n;
			}
			if (flag) {
				break;
			}
			for(int p=1; p<k; p++) {
				a[i][j] = ++n;
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
