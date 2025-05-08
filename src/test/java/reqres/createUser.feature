Feature: Create a user


  Scenario: Creating a new user
    Given url 'https://reqres.in'
    And path 'api/users'
    And header x-api-key = 'reqres-free-v1'
    And request { "name": "John Doe", "job": "leader" }
    When method post
    Then status 201

  Scenario: Creating a new user using json body
    Given url 'https://reqres.in'
    And path 'api/users'
    And header x-api-key = 'reqres-free-v1'
    And request
    """
    {
    "name": "jay",
    "job": "leader"
    }
    """
    When method post
    Then status 201

  Scenario: Create using using a function
    Given url 'https://reqres.in'
    And path 'api/users'
    And header x-api-key = 'reqres-free-v1'
    * def requestPayload = {}
    * requestPayload.name = "JayRaj"
    * requestPayload.job = "Pilot"
    And request requestPayload
    When method post
    And status 201