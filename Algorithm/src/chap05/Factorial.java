package chap05;
//팩토리얼을 재귀적으로 구현

import java.util.Scanner;

public class Factorial {
	
	static int factorial(int n) {
		if(n>0)
			return n * factorial(n-1);
		else
			return 1;
	}

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("정수 입력: ");
		int x = sc.nextInt();
		
		System.out.println(x+"의 팩토리얼: "+factorial(x));

	}

}
