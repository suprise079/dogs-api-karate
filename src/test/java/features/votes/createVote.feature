Feature: The create vote request in the dog api.

  Background:
    * url 'https://api.thedogapi.com/v1'
    * header x-api-key = 'live_VZ28lGNITkt716ac4MLRGuCyouEK3A0GY3izoEXNWyrAu64ZPXVzW0uGgsHlie0l'
    * header ProjectID = '0f9db06d-b7e7-4c6f-bcfc-7c1788c668e7'
    * header 'Content-Type' = 'application/json'

    Scenario: This test will create a vote for a given image id, sub id and value.
        Given path 'votes'
        And request {"image_id":"img456","sub_id":"sub002","value":1}
        When method post
        Then status 200
        And match response.message == 'SUCCESS'

