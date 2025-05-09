Feature: Generating a random data using faker class


  Scenario: Creating a function of faker and utilizing it
#    First you need to initialize the faker class by providing the class and it's package
    * def faker = Java.type('net.datafaker.Faker')
    * def fakerObject = new faker()
    * def name = fakerObject.name().firstName()
    * def lastName = fakerObject.name().lastName()
    * set jsonObject
      | path     | value    |
      | name     | name     |
      | lastname | lastName |
    * print jsonObject


# Instead of creating an object of faker class we will create a java util and utilize the functions directly
  Scenario: Creating a util function and creating random data
    * def faker = Java.type('dataFaker.Randomgenerator')
    * def name = faker.getFirstName()
    * def number = faker.getRandomNumber()
    * def lastName = faker.getLastName()
    * print name
    * print number
    * print lastName

