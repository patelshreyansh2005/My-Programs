
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class CaesarCipher {

    static int key = 0;

    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter key : ");
        key = sc.nextInt();
        sc.nextLine();
        String input = "";
        while (input.isEmpty()) {
            System.out.print("\033[H\033[2J");
            System.out.flush();
            System.out.print("Type 'encrypt' to encrypt file and 'decrypt' to decrypt file :");
            input = sc.nextLine();
            if (input.equals("encrypt")) {
                encript();
            } else if (input.equals("decrypt")) {
                decript();
            } else {
                System.out.println("!!! Enter valide input !!!");
            }
        }
        sc.close();

    }

    public static void encript() throws IOException {
        try (FileWriter cipherFile = new FileWriter("cipherText.txt")) {
            File inputFile = new File("input.txt");
            FileReader reader = new FileReader(inputFile);
            char[] inputText = new char[(int) inputFile.length()];
            reader.read(inputText);
            reader.close();
            for (char c : inputText) {
                if (c == ' ' || c == '\n') {
                    cipherFile.append(c);
                } else {
                    cipherFile.append((char) (c + key));
                }
            }
        }
    }

    public static void decript() throws IOException {
        try (FileWriter cipherFile = new FileWriter("plainText.txt")) {
            File inputFile = new File("cipherText.txt");
            FileReader reader = new FileReader(inputFile);
            char[] cipherText = new char[(int) inputFile.length()];
            reader.read(cipherText);
            reader.close();

            for (char c : cipherText) {
                if (c == ' ' || c == '\n') {
                    cipherFile.append(c);
                } else {
                    cipherFile.append((char) (c - key));
                }
            }
        }
    }
}
