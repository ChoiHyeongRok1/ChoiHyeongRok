package com.tjoeun.abstractClass;

import java.util.ArrayList;

abstract class Animal {
//	public void move() {
//		System.out.println("동물이 움직입니다.");
//	}
	public abstract void move(); //추상 메소드
	public void eating() { // 일반 메소드
		
	}
	
}
// Human 클래스는 Animal 클래스를 상속받아 만든다.
class Human extends Animal {

	@Override
	public void move() {
		System.out.println("사람이 두 발로 걷습니다.");
	}
	
	public void readBooks() {
		System.out.println("사람이 책을 읽습니다.");
	}
	
}

// Tiger 클래스는 Animal 클래스를 상속받아 만든다.

class Tiger extends Animal {

	@Override
	public void move() {
		System.out.println("호랑이가 네 발로 걷습니다.");	
	}
	public void hunting() {
		System.out.println("호랑이가 사냥을 합니다.");
	}
	
}

// Eagle 클래스는 Animal 클래스를 상속받아 만든다.

class Eagle extends Animal{

	@Override
	public void move() {
		System.out.println("독수리가 하늘을 날아갑니다.");
		
	}
	public void flying() {
		System.out.println("독수리가 날개를 쫙 핍니다.");
	}
	
}

public class InstanceOfTest {
	
	public static void main(String[] args) {
		
//		Animal[] animals = {new Human(), new Tiger(), new Eagle()};
//		animals[0].move();
//		animals[1].move();
//		animals[2].move();
		
		Animal hAnimal = new Human();  // upcasting, 자식 => 부모
		Animal tAnimal = new Tiger();  // upcasting, 자식 => 부모
		Animal eAnimal = new Eagle();  // upcasting, 자식 => 부모
		
//		main() 이라는 static 메소드에서 moveAnimal() 메소드를 바로 실행하기 때문에
//		moveAnimal() 메소드는 반드시 static으로 선언된 메소드여야 한다.
//		private static void moveAnimal(Animal animal) {}
		moveAnimal(hAnimal);
		moveAnimal(tAnimal);
		moveAnimal(eAnimal);
		
		
//		현재 클래스 자신의 객체를 생성해서 moveAnimal2() 메소드를 실행하게 되면
//		static 메소드로 만들지 않고도 실행할 수 있다.
//		private void moveAnimal2(Animal animal) {}
		InstanceOfTest test = new InstanceOfTest(); // 자신의 클래스 객체를 만든다.
		test.moveAnimal2(hAnimal);
		test.moveAnimal2(tAnimal);
		test.moveAnimal2(eAnimal);
		
		ArrayList<Animal> animalList = new ArrayList<>();
		animalList.add(hAnimal);
		animalList.add(tAnimal);
		animalList.add(eAnimal);
		
		for(Animal animal : animalList) {
			animal.move();
		}
		System.out.println("========================================");
		
		for(int i=0; i<animalList.size(); i++) {
			Animal animal = animalList.get(i);
//			downcasting: upcasting된 클래스를 다시 원래의 타입으로 형변환시킨다.
//			instanceof 연산자를 사용하여 형변환이 가능한지 확인한 후 downcasting을 실행한다.
			if(animal instanceof Human) {
				Human human = (Human)animal; // 부모에 저장된 자식 객체 => 자식
				human.readBooks();
			}else if(animal instanceof Tiger) {
				Tiger tiger = (Tiger)animal;
				tiger.hunting();
			}else if(animal instanceof Eagle){
				Eagle eagle = (Eagle)animal;
				eagle.flying();
			}else {
				System.out.println("downcasting 불가능");
			}
		}
		
	}

	private static void moveAnimal(Animal animal) {
		animal.move();		
	}
	private void moveAnimal2(Animal animal) {
		animal.move();		
	}
	
}
