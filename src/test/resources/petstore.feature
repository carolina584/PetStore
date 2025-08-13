Feature: PetStore User API Test Suite

  Background:
    * url 'https://petstore.swagger.io/v2'
    * header Accept = 'application/json'
    # Carga el JSON desde un archivo externo
    * def user = read('user.json')
    # Genera un nombre de usuario dinámico y único
    * set user.username = 'karate_user_' + java.lang.System.currentTimeMillis()

  Scenario: Flujo completo de un usuario (Crear, Buscar, Actualizar, Eliminar)

    Given path '/user'
    And request user
    When method POST
    Then status 200
    * print 'response: ' + response
    * java.lang.Thread.sleep(9000)

    Given path '/user/' + user.username
    When method GET
    Then status 200
    And match response.username == user.username
    * print 'response: ' + response
    * java.lang.Thread.sleep(9000)

    * set user.firstName = 'KarateActualizado'
    * set user.email = 'actualizado@example.com'
    Given path '/user/' + user.username
    And request user
    When method PUT
    Then status 200
    * java.lang.Thread.sleep(9000)

    Given path '/user/' + user.username
    When method GET
    Then status 200
    And match response.firstName == 'KarateActualizado'
    And match response.email == 'actualizado@example.com'
    * java.lang.Thread.sleep(9000)

    Given path '/user/' + user.username
    When method DELETE
    Then status 200
    And match response.message == user.username