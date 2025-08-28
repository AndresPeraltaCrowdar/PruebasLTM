@Login
Feature: Inicio de sesión con credenciales válidas

  Scenario: Usuario inicia sesión exitosamente con credenciales válidas
    Given el usuario está registrado en el sistema
    And se encuentra en la pantalla de inicio de sesión
    When ingresa un correo válido y su contraseña correspondiente
    And hace clic en el botón "Iniciar sesión"
    Then el sistema lo redirige al panel principal
    
  Scenario: Usuario inicia sesión exitosamente con credenciales válidas nuevas
    Given el usuario está registrado en el sistema
    And se encuentra en la pantalla de inicio de sesión nueva
    When ingresa un correo electrónico válido
    And ingresa su contraseña correspondiente
    And hace clic en el botón "Iniciar sesión"
    Then el sistema valida las credenciales
    And el sistema redirige al usuario al panel principal

  Scenario Outline: Usuario no puede iniciar sesión con credenciales inválidas <correo> <contraseña>
    Given el usuario se encuentra en la pantalla de inicio de sesión
    When ingresa credenciales inválidas
    And hace clic en el botón "Iniciar sesión"
    Then el sistema muestra un mensaje de error indicando "Credenciales inválidas"

    Examples:
      | correo              | contraseña    |
      | usuario@email.com   | contraseña123 |
      | usuario@email.com   | contraseñaErr |
      | inexistente@x.com   | cualquierPass |