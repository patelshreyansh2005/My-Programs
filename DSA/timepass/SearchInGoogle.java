import java.io.*;
import java.util.Scanner;

public class SearchInGoogle {
    public static void main(String[] args) throws Exception {

        String str = "https://lively-dawn-b589.gauddegassehe-45486951.workers.dev/?file=MTwGNyAoOCAxPDMjATkDRjAzCxEMIRUaJQcnAQs2Nho2IVwmC1lXIT83IAIoAgVbPTklIQwyJlwgMxkOIS8JWj07NhsLGzgcCiEeBTheIFwxPTsoAQYXQDw9GCcPMAEgIQUBAg07VR0hID8NOlg4VTsEHiIHLyMaMABWOwgOBFo6Mx0hEjxUPTg6NiM8My9UPVk0Igk5Mx43A1w4BjoXRT0iHAY9CD8dIwIVJQs6IhQ1MQpcODhTWQ%3D%3D&rayid=1691946144";
        // Scanner sc = new Scanner(System.in);
        // System.out.print("What you want to search : ");
        // str = sc.nextLine();
        // sc.close();
        // str = str.replace(' ', '+');
        // ProcessRunner.run("start https://www.google.com/search?q="+str);
        // ProcessRunner.run("start https://music.youtube.com/search?q="+str);
        // str = str.replace("+", "%20");
        ProcessRunner.run("start "+str);
        // ProcessRunner.run("start https://open.spotify.com/search/"+str);
    }
}

// https://chat.openai.com/
// start https://www.google.com/search?q=
// document.getElementById('prompt-textarea').value = 'asd'
// https://music.youtube.com/search?q=
// https://open.spotify.com/search/

class ProcessRunner{
    static void run(String name) throws IOException{
        ProcessBuilder builder = new ProcessBuilder("cmd.exe", "/c", name);
        builder.redirectErrorStream(true);
        Process p = builder.start();
        BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
        String line;
        while (true) {
            line = r.readLine();
            if (line == null) {
                break;
            }
            System.out.println(line);
        }
    }
}

