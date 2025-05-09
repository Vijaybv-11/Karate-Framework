package dataFaker;

import net.datafaker.Faker;

public class Fakedata {

    public static void main(String[] args) {
        Faker faker = new Faker();
        System.out.println(faker.name().firstName());
        System.out.println(faker.number().digits(5));

    }
}
