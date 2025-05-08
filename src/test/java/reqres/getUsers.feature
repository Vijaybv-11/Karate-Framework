Feature: Get the list of users


  Scenario: Getting users from a current page
    Given url 'https://reqres.in'
    And path '/api/users'
    And param page = 2
    When method get
    Then status 200


  Scenario: Get Airline using Id
    Given url 'https://reqres.in'
    And path '/api/users/2'
    When method get
    Then status 200
    And match responseStatus == 200
    And assert responseStatus == 200
    And print "Response status code is" + responseStatus
    And print responseStatus
    And match response == { "data": { "id": 2, "email": "janet.weaver@reqres.in", "first_name": "Janet", "last_name": "Weaver", "avatar": "https://reqres.in/img/faces/2-image.jpg" }, "support": { "url": "https://contentcaddy.io?utm_source=reqres&utm_medium=json&utm_campaign=referral", "text": "Tired of writing endless social media content? Let Content Caddy generate it for you." } }
    And match $ == { "data": { "id": 2, "email": "janet.weaver@reqres.in", "first_name": "Janet", "last_name": "Weaver", "avatar": "https://reqres.in/img/faces/2-image.jpg" }, "support": { "url": "https://contentcaddy.io?utm_source=reqres&utm_medium=json&utm_campaign=referral", "text": "Tired of writing endless social media content? Let Content Caddy generate it for you." } }
    And match response.data.id == 2
    And match response.data.email == "janet.weaver@reqres.in"
    And match $.data.id == 2
    And match header Content-Type =='application/json; charset=utf-8'
    And match header Content-Type contains 'application/json'
    And match karate.response.header('Content-Type') =='application/json;charset=utf-8'