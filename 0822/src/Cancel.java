import java.util.Scanner;

public class Cancel {
	
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		
		System.out.print("i값: ");
		int i = scanner.nextInt();
		
		System.out.println("j값: ");
		int j = scanner.nextInt();
		
		if(i>j){
			
			int temp = i;
			i = j;
			j = temp;
			
		}
		
		System.out.print(i + " " + j);
		
		
		
		
	}

}
