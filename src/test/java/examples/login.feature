Feature: Inicio sesion

  @login
  Scenario: Generar token
Given url "https://reqres.in/"
    And path "/api/login"
    And request {"email": #(correo),"password": #(clave) }
    When method post
    Then status 200
    * print response
      * def authToken = response.token

