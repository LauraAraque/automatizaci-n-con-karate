Feature: primera prueba post karate
  cómo ingeniero de calidad, requiero realizar peticiones a la api de gorest para validar
  su correcto funcionaminto

  Background:

    * def dataResponse = read('../jsonresponse/respuestaPost.json')
    * def dataRequest = read('../jsonrequest/peticionPost.json')

  Scenario: traer información con post

    Given url 'https://gorest.co.in/public/v2/comments'
    And header Authorization = 'Bearer 5c38ff8566cee5ccb3f7181ae2d9cb7084edca281bd59e212995d70288966576'
    And request
    """
     {
        "id": 132558,
        "post_id": 183174,
        "name": "panzer",
        "email": "tommy@heaney.test",
        "body": "mascotas"
    }
    """
    When method post
    * print "respuesta del post", response
    Then status 201
    And match response == dataResponse

  Scenario Outline: traer información con post outline

    Given url 'https://gorest.co.in/public/v2/comments'
    And header Authorization = 'Bearer 5c38ff8566cee5ccb3f7181ae2d9cb7084edca281bd59e212995d70288966576'
    * set dataRequest.id = <id>
    * set dataRequest.post_id = <post_id>
    * set dataRequest.name = "<name>"
    * set dataRequest.email = "<email>"
    * set dataRequest.body = "<body>"
    And request dataRequest
    When method post
    * print "respuesta del post", response
    Then status 201
    And match response == dataResponse

    Examples:

      | id     | post_id | name    | email               | body       |
      | 132559 | 183176  | laura   | laura@hotmail.com   | soy laura  |
      | 132558 | 183174  | navidad | navidad@hotmail.com | es navidad |
      | 132557 | 183173  | prueba  | prueba@hotmail.com  | es prueba  |
