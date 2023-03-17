Feature: The get votes requests in the dog api.

  Background:
    * url 'https://api.thedogapi.com/v1'
    * header x-api-key = 'live_VZ28lGNITkt716ac4MLRGuCyouEK3A0GY3izoEXNWyrAu64ZPXVzW0uGgsHlie0l'
    * header ProjectID = '0f9db06d-b7e7-4c6f-bcfc-7c1788c668e7'
    * header 'Content-Type' = 'application/json'

    Scenario: This test will get all the votes for a given sub id.
      Given path 'votes/'
      And param 'sub_id' = 'test'
      When method get
      Then status 200
      And assert response.length == 0