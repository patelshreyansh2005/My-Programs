
// https://chat.openai.com/
// start https://www.google.com/search?q=
// document.getElementById('prompt-textarea').value = 'asd'
////////////////////////////////////////////////////////////////
// import java.io.*;
// import java.util.Scanner;

// public class test {
//     public static void main(String[] args) throws Exception {

//         String str;
//         Scanner sc = new Scanner(System.in);
//         System.out.print("What you want to search : ");
//         str = sc.nextLine();
//         sc.close();

//         ProcessBuilder builder = new ProcessBuilder("cmd.exe", "/c", "start https://www.google.com/search?q="+str);
//         builder.redirectErrorStream(true);
//         Process p = builder.start();
//         BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
//         String line;
//         while (true) {
//             line = r.readLine();
//             if (line == null) {
//                 break;
//             }
//             System.out.println(line);
//         }
//     }
// }

//////////////////////////////////////////////////////////////
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class JavaScriptExecutionExample {

    public static void main(String[] args) {
        // Set the path to your ChromeDriver executable
        System.setProperty("webdriver.chrome.driver", "path/to/chromedriver.exe");

        // Create a new instance of the ChromeDriver
        WebDriver driver = new ChromeDriver();

        try {
            // Open a website
            driver.get("https://chat.openai.com/");

            // Find the element you want to interact with (e.g., a button) using its XPath
            // or CSS selector
            WebElement buttonElement = driver.findElement(By.xpath("//textarea[@id='prompt-textarea']"));

            // Click the button
            System.out.println(buttonElement.getText());

            // Perform additional actions if needed
        } finally {
            // Close the browser when done
            driver.quit();
        }
    }
}
