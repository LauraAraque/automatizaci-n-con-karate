Feature: primera prueba múltiple karate
  cómo ingeniero de calidad, requiero realizar peticiones a la api de gorest para validar
  su correcto funcionaminto

  Background:

    * def dataResponse = read('../jsonresponse/respuestaMultiple.json')

  Scenario Outline: consultar comentario de varias persona

    Given url 'https://gorest.co.in/public/v2/comments/<id>'
    When method get
    * print "respuesta del get", response
    Then status 200
    And match response == dataResponse


    Examples:
      | id     |
      | 132462 |
      | 132461 |
      | 132460 |
      | 132459 |

