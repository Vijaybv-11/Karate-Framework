Feature: Creation of Author using file


#  Scenario: Create an Author using json file without manipulation
#    Given url "https://fakerestapi.azurewebsites.net"
#    And path "api/v1/Authors"
#    * def requestPayload = read("payloads/createAuthor.json")
#    * print requestPayload
#    And request requestPayload
#    When method post
#    Then status 200


  Scenario: Create an Author using json file by manipulating the data
    Given url "https://fakerestapi.azurewebsites.net"
    And path "api/v1/Authors"
    * def requestPayload = read('payloads/createAuthor.json')
    * set requestPayload.id = 8765
    * print requestPayload
    * remove requestPayload.id   #Removes the value and generates an random value
    And request requestPayload
    When method post
    Then status 200


    Scenario: :Adding new fields for the same json file without changing the original file
      Given url "https://fakerestapi.azurewebsites.net"
      And path "api/v1/Authors"
      * def requestPayload = read('payloads/createAuthor.json')
      * set requestPayload.distributor = "sapna book house"
      * set requestPayload.price =
      """
    {
        "bookprice": {
          "originalprice": 100,
          "discountedprice": 89
        }
      }
       """
      * set requestPayload.genre[0] = {genre:fictional}
      * print requestPayload