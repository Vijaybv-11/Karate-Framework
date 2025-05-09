Feature: Creating jsonobject and arrays in many ways possible

#  We have path and value key for creating a json object and for int datatype no need to enclose it in double quotes and for string it's necessary if it has an apostrophe
  Scenario: Create simple JSON Object
    * set jsonObjectPayload
      | path | value   |
      | id   | 10      |
      | name | "jay's" |
    * print jsonObjectPayload

  Scenario: Create a nested JSON Object
    * set jsonObjectPayload
      | path           | value       |
      | id             | 10          |
      | name           | "jay's"     |
      | address.street | '7th Cross' |
      | address.state  | "KA"        |
    * print jsonObjectPayload

  Scenario: Create a Json Array in json object
    * set jsonObjectPayload
      | path                        | value                |
      | id                          | 10                   |
      | name                        | "jay's"              |
      | address[0].primary.street   | '7th Cross'          |
      | address[0].primary.state    | "KA"                 |
      | address[1].secondary.street | 'Midwilshire Street' |
      | address[1].secondary.state  | "US"                 |
    * print jsonObjectPayload


  Scenario: Create a Json Object with variables
    * def city = "Banfalore"
    * def country = "IND"
    * set jsonObjectPayload
      | path                        | value                |
      | id                          | 10                   |
      | name                        | "jay's"              |
      | city                        | city                 |
      | country                     | country              |
      | address[0].primary.street   | '7th Cross'          |
      | address[0].primary.state    | "KA"                 |
      | address[1].secondary.street | 'Midwilshire Street' |
      | address[1].secondary.state  | "US"                 |
    * print jsonObjectPayload

  Scenario: Create simple json array
    * set jsonArray
      | path | 0       | 1      |
      | name | "Vijay" | "Raj"
      | id   | 11      | (null) |
    * print jsonArray

  Scenario: Manipulate existing json
    * def existingJson = { name: 'Jayraj' }
    * set existingJson.details
      | path    | value |
      | married | "No"  |
      | age     | 25    |
    * print existingJson

  Scenario: Manipulate existing json from a file
    * def existingJson = read('payloads/createAuthor.json')
    * set existingJson.details
      | path    | value |
      | married | "No"  |
      | age     | 25    |
    * print existingJson