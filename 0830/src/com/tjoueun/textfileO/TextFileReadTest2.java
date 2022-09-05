package com.tjoueun.textfileO;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Scanner;

public class TextFileReadTest2 {

	public static void main(String[] args) {

		Scanner scanner = null;
		String filePath = "D:\\cccc\\java\\work\\0830\\data\\input.txt";

		try {
			scanner = new Scanner(new File(filePath));

			while (scanner.hasNextLine()) {

				String str = scanner.nextLine().trim();
				System.out.println(str);
				System.out.println(Arrays.toString(str.split(" ")));
				
				int i = 0;
				boolean b = false;
				double d = 0;
				String s = "";

				Scanner scan = new Scanner(str);
//				hasNext()메소드는 스캐너로 지정된 문자열에서 공백을 경계로 읽어들이 데이터가
//				있으면 true 없으면 false
				while(scan.hasNext()) {
					if(scan.hasNextInt()) {//Scanner로 읽을 데이터가 int면 true 없으면 false
						i = scan.nextInt();	
					}else if(scan.hasNextBoolean()) {//Scanner로 읽을 데이터가 boolean면 true 없으면 false
						b = scan.nextBoolean();						
					}else if(scan.hasNextDouble()) {//Scanner로 읽을 데이터가 double면 true 없으면 false
						d = scan.nextDouble();						
					}else {
						s = scan.next();						
					}
				}
				
				System.out.println("i: " + i);
				System.out.println("b: " + b);
				System.out.println("d: " + d);
				System.out.println("s: " + s);

			}
			System.out.println("텍스트 파일에서 읽기완료");
		} catch (FileNotFoundException e) {
			System.out.println("디스크에 파일이 존재하지 않습니다.");

		} finally {

			if (scanner != null) {
				scanner.close();

			}

		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

	}

}
