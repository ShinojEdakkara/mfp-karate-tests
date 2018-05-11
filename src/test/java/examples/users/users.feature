Feature: MFP Resource
Background:
* def signIn = callonce read('./get_token.feature')
* def accessToken =  'Bearer ' + signIn.response.access_token
* print 'access token', accessToken

Scenario: Testing a hello api
    Given url 'http://mobilefoundation-ibmbank0cde-server.mybluemix.net/mfp/api/adapters/javaAdapter/resource'
    And header Authorization = accessToken
    When method GET
    Then status 200
    And match $ == 'Hello from resource'
