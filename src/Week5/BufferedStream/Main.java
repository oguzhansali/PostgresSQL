package Week5.BufferedStream;

import java.io.*;

public class Main {
    public static void main(String[] args) {
        String data = "Java 102 Patikası";

        try {

            FileOutputStream fileOutput =new FileOutputStream("araba.txt");
            BufferedOutputStream buffOut = new BufferedOutputStream(fileOutput);

            byte[] byteArray= data.getBytes();
            buffOut.write(byteArray);
            buffOut.close();
            fileOutput.close();
            /*
            FileInputStream fileInput = new FileInputStream("araba.txt");
            BufferedInputStream buffInput=new BufferedInputStream(fileInput);

            int i= buffInput.read();
            while (i!=-1){
                System.out.println((char) i);
                i=buffInput.read();*/
            } catch (FileNotFoundException ex) {
            throw new RuntimeException(ex);
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }
    }    /*catch (Exception e){
            e.printStackTrace();
        }*/

    }

