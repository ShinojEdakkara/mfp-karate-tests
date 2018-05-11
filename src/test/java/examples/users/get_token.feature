Feature: MFP Resource
    Scenario: Getting access token
        Given url 'https://mobilefoundation-ibmbank0cde-server.mybluemix.net/mfp/api/az/v1/token'
        And header Authorization = 'Basic dGVzdDp0ZXN0'
        And form field grant_type = 'client_credentials'
        And form field scope = 'defaultScope'
        When method POST
        Then status 200
