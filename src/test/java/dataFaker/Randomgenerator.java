package dataFaker;

import net.datafaker.Faker;

public class Randomgenerator {

    static Faker faker = new Faker();
    public static String getFirstName(){
        return faker.name().firstName();
    }
    public static int getRandomNumber(){
        return faker.number().randomDigit();
    }
    public static String getLastName(){
        return faker.name().lastName();
    }

}
