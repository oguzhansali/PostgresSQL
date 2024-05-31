package Week5.InputOutputIslemleri;

import java.io.ObjectInputStream;
import java.io.*;
import java.io.ObjectOutputStream;
import java.io.IOException;
public class Main {
    public static void main(String[] args) {
        Car c1 = new Car("Audi","A3");

        try {
            /*
            //Dosya oluşturarak içine veri gönderme.
            FileOutputStream outputFile = new FileOutputStream("araba.txt");
            ObjectOutputStream output=new ObjectOutputStream(outputFile);
            output.writeObject(c1);
            output.close();*/

            //Nesneyi okumak.
            FileInputStream inputFile =new FileInputStream("araba.txt");
            ObjectInputStream inputStream = new ObjectInputStream(inputFile);
            //Geri dönenen nesne Car sınıfınamı ait.
            Car newCar =(Car) inputStream.readObject();
            System.out.println(newCar.getBrand());
            System.out.println(newCar.getModel());

        }catch (IOException | ClassNotFoundException e){
            e.printStackTrace();
        }
    }
}
