//package com.company;

import java.util.Objects;

public class Calcutaor {
	public static void main(String[] args) {
		String op=args[1];
		int n1=Integer.parseInt(args[0]);
		int n2=Integer.parseInt(args[2]);
		if(Objects.equals(op, "+")) {
			System.out.println(n1+"+"+n2+"="+(n1+n2));
		}
		else if(Objects.equals(op, "-")) {
			System.out.println(n1+"-"+n2+"="+(n1-n2));
		}
		else if(Objects.equals(op, "*")) {
			System.out.println(n1+"*"+n2+"="+(n1 * n2));
		}
		else if(Objects.equals(op, "/")) {
			System.out.println(n1+"/"+n2+"="+(n1/n2));
		}
		else {
			System.out.println("  Function not available  ");
		}
	}
}
