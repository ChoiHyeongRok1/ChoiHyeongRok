import java.util.Arrays;

public class SelectionSort {
	public static void main(String[] args) {
		
//		for(int i=0; i<4; i++) {
//			for(int j=i+1; j<5; j++) {
//				System.out.println("i= " + i + ", j = " + j);
//			}
//			System.out.println();
//		}
//		
		int[]data = {100, 8, 3, 4, 9, 1};
		
		for(int i=0; i<data.length-1; i++) { // 선택 위치, 회전수 제어
			for(int j=i+1; j<data.length; j++) {// 선택 위치의 데어터와 비교할 대상이 되는 데이터 위치
				
//				오름차순 정렬 => 앞(i번째) 의 데이터가 뒤(j번째)의 데이터보다 크다면 두 기억장소의 값을 교환한다.
				// ">"면 오름차순, "<"면 내림차순
				if(data[i] > data[j]) {
					int temp = data[i];
					data[i] = data[j];
					data[j] = temp;
				}
			}System.out.println(i + 1 + "회전 결과: " + Arrays.toString(data));
		}// 정렬 종료
		
		System.out.println("정렬 결과: " + Arrays.toString(data));
		
		
	}

}
