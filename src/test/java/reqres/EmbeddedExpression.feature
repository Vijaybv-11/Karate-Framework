Feature: Creating a set of scenarios to use embedded expression

  Scenario: Embedded Expression case-1
    * def json = { name: "jay", age: 10 }
    * print json
    * def fname = 'Vijay'
    * def lname = 'Jayraj'
    * def age = 24
    * def level = 'Top'
    * def newJson = { name: '#(fname)', age: '#(age)', lname: '#(lname)', level: '#(level)' }
    * def newJson2 = { name: '#("Hello "+fname+"  "+ lname)', age: '#(age)', lname: '#(lname)', level: '#(level)' }
    * print newJson
    * print newJson2


  Scenario: Case -2 using json files
    * def id = 10
    * def idBook = 69
    * def firstName = "Robert"
    * def lastName = "Stewing"
    * def requestPayload = read('payloads/createAuthor.json')
    * print requestPayload
    * def welcomeText = 'Hello ${firstName}'
    * print welcomeText


  Scenario: case-3 with json path
    * def json = { name: "jay", age: 10 }
    * def lname = 'Jayraj'
    * def age = 24
    * def level = 'Top'
    * def newJson = { name: '#(json.name)', age: '#(json.age)', lname: '#(lname)', level: '#(level)' }
    * print newJson