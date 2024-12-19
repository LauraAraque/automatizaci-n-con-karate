Feature: primera prueba karate
  cómo ingeniero de calidad, requiero realizar peticiones a la api de gorest para validar
  su correcto funcionaminto

Scenario: consultar comentarios

  Given url 'https://gorest.co.in/public/v2/comments'
  When method get
  Then status 200

  Scenario: consultar comentario de una persona

    Given url 'https://gorest.co.in/public/v2/comments/132284'
    When method get
    Then status 200

  Scenario: traer información con post

    Given url 'https://gorest.co.in/public/v2/comments'
    And header Authorization = 'Bearer 5c38ff8566cee5ccb3f7181ae2d9cb7084edca281bd59e212995d70288966576'
    And request
    """
        {
        "id": 132284,
        "post_id": 182828,
        "name": "Minakshi Devar",
        "email": "devar_minakshi@kirlin.example",
        "body": "Dolores sit tenetur. Facere qui eos."
    }
    """
    When method post
    Then status 201