import java.util.Scanner;

public class prog_6_7 {
    public static void main(String[] args) {

    }
}

class Time {
    int hour;
    int minute;
    int day;

    void DisplayTimeDetails() {
        System.out.println(day+" Days "+hour+" : "+minute);
    }

    void GetTimeDetails() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter hour : ");
        this.hour = sc.nextInt();
        System.out.print("Enter minute : ");
        this.minute = sc.nextInt();
    }

    void addTime(Time time){
        this.minute+=minute;
        
    }
}
