import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

public class Cancel {
	
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		System.out.print("년: ");
		int year = scanner.nextInt()-1900;
		System.out.print("월: ");
		int month = scanner.nextInt()-1;
		System.out.print("일: ");
		int day = scanner.nextInt();
		
		Date date = new Date(year, month, day);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd(E) a h:mm:ss.SSS");
		System.out.println(sdf.format(date));
		
		date.setYear(2023-1900);
		System.out.println(sdf.format(date));
		
	}

}
