package Week5.ReadFile;

import java.io.*;

public class Main {
    public static void main(String[] args) throws FileNotFoundException {

        String filePath = "dosya.txt";
        int sum=0;

        try{
            //File oluşturma.
            FileWriter writer = new FileWriter(filePath);
            BufferedWriter bufferedWriter= new BufferedWriter(writer);
            bufferedWriter.write("5");
            bufferedWriter.newLine();
            bufferedWriter.write("10");
            bufferedWriter.newLine();
            bufferedWriter.write("20");
            bufferedWriter.newLine();
            bufferedWriter.write("12");
            bufferedWriter.newLine();
            bufferedWriter.write("33");
            bufferedWriter.newLine();
            bufferedWriter.close();

            //File okuma.
            FileReader fileReader = new FileReader(filePath);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            String line;
            while ((line=bufferedReader.readLine())!=null){
                int number = Integer.parseInt(line.trim());
                sum+=number;
            }
            bufferedReader.close();
            System.out.println("Toplam: " + sum);

        }catch (IOException e){
            System.out.println("Dosya Bulunamadı: " + e.getMessage());
        }

    }
}
