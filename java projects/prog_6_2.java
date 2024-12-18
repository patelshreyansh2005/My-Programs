import java.util.Scanner;

public class prog_6_2 {
    public static void main(String[] args) {

        Candidate a=new Candidate();
        a.GetCandidateDetails();
        a.DisplayCandidateDetails();
    }
}

class Candidate {
    int Candidate_ID;
    String Candidate_Name;
    String gender;
    int Candidate_Age;
    float Candidate_Weight;
    float Candidate_Height;

    void DisplayCandidateDetails() {
        System.out.println("Candidate_ID = " + Candidate_ID);
        System.out.println("Candidate_Name = " + Candidate_Name);
        System.out.println("Gender = " + gender);
        System.out.println("Candidate_Age = " + Candidate_Age);
        System.out.println("Candidate_Weight = " + Candidate_Weight);
        System.out.println("Candidate_Height = " + Candidate_Height);
    }

    void GetCandidateDetails() {
        Scanner sc1 = new Scanner(System.in);
        Scanner sc2 = new Scanner(System.in);
        System.out.print("Enter Candidate ID : ");
        this.Candidate_ID = sc1.nextInt();
        System.out.print("Enter Candidate Name : ");
        this.Candidate_Name = sc2.nextLine();
        System.out.print("Enter Candidate Age : ");
        this.Candidate_Age = sc1.nextInt();
        System.out.print("Enter gender : ");
        this.gender = sc2.nextLine();
        System.out.print("Enter Candidate Weight : ");
        this.Candidate_Weight = sc1.nextFloat();
        System.out.print("Enter Candidate Height : ");
        this.Candidate_Height = sc1.nextFloat();
    }
}
