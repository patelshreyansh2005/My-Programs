import java.util.Scanner;

public class prog_8_2 {
    public static void main(String[] args) {

    }
}

class Shape {
    Scanner sc = new Scanner(System.in);
    double area;
}

class Circle extends Shape {
    float radius;

    void getRadius() {
        System.out.println("Enter Radius of Circle: ");
        radius = sc.nextFloat();
    }

    void displayArea() {
        area = Math.PI * radius * radius;
        System.out.println("Area = " + area);
    }
}

class Triangle extends Shape {
    float height;
    float base;
    void grtDetails(){
        System.out.println("Enter Height of Triangle: ");
        height = sc.nextFloat();
        System.out.println("Enter Base of Triangle: ");
        base = sc.nextFloat();
    }
    void displayArea(){
        area = height*base/2;
        System.out.println("Area of Triangle is "+area);
    }
}

class Rectangle extends Shape {
    float height;
    float width;
    void grtDetails(){
        System.out.println("Enter Height of Triangle: ");
        height = sc.nextFloat();
        System.out.println("Enter width of Triangle: ");
        width = sc.nextFloat();
    }
    void displayArea(){
        area = height*width;
        System.out.println("Area of Triangle is "+area);
    }
}

