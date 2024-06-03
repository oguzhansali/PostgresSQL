package Week5.NotepadApplication;

import java.io.*;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws IOException {

        Scanner input = new Scanner(System.in);


        try {
            //Dosyaya yazma.
            FileWriter fileWriter = new FileWriter("notepad.txt",true);//Append modu.
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);

            System.out.println("Enter the text(write 'exit' to stop): ");
            String text;
            while (true) {
                text = input.nextLine();
                if (text.equalsIgnoreCase("exit")) {
                    break;
                }
                bufferedWriter.write(text);
                bufferedWriter.newLine();//Yeni satır eklemek için
            }
            bufferedWriter.close();//Yazma işlemini bittikten sonra kapatıyoruz.

            //Dosyadan okuma.
            FileReader fileReader = new FileReader("notepad.txt");
            BufferedReader bufferedReader = new BufferedReader(fileReader);

            String line;
            String lastLine="";
            System.out.println("Dosyadan okunuan:");
            while ((line = bufferedReader.readLine()) != null) {
                System.out.println(line);
                lastLine=line;//En son satırı sakla.
            }
            bufferedReader.close();//Okuma işlemi bittikten sonra kapatıyoruz.

            //Son satırı ekrana yazdırır.
            System.out.println("Last input: "+lastLine);

        } catch (IOException e) {
            System.out.println("Hata: " + e.getMessage());
        } finally {
            input.close();//Scanner ile veri girişini kapatır.
        }


    }
}
