Feature: The delete votes requests in the dog api.

  Background:
    * url 'https://api.thedogapi.com/v1'
    * header x-api-key = 'live_VZ28lGNITkt716ac4MLRGuCyouEK3A0GY3izoEXNWyrAu64ZPXVzW0uGgsHlie0l'
    * header ProjectID = '0f9db06d-b7e7-4c6f-bcfc-7c1788c668e7'
    * header 'Content-Type' = 'application/json'

  Scenario: This test will delete a vote for a given vote id.
    * def voteId = 146252
    Given path 'votes/', voteId
    When method delete
    Then status 201
    And match response.message == 'SUCCESS'