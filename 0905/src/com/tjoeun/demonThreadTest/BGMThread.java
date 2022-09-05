package com.tjoeun.demonThreadTest;

public class BGMThread extends Thread{

	@Override
	public void run() {
		while (true) {
			System.out.println("배경음악 재생중");
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	
	

}
