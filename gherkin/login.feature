
Feature: Inicio de sesión en SauceDemo
  Como usuario de la tienda
  Quiero iniciar sesión con mis credenciales
  Para acceder al catálogo de productos

  Scenario: Inicio de sesión exitoso
    Given que el usuario se encuentra en la página de login
    And tiene una cuenta válida
    When ingresa el usuario "standard_user"
    And ingresa la contraseña "secret_sauce"
    And presiona el botón "Login"
    Then el sistema permite el acceso
    And muestra el catálogo de productos

  Scenario: Inicio de sesión con contraseña incorrecta
    Given que el usuario se encuentra en la página de login
    And tiene una cuenta registrada
    When ingresa el usuario "standard_user"
    And ingresa la contraseña "123456"
    And presiona el botón "Login"
    Then el sistema rechaza el acceso
    And muestra un mensaje de error
    But no permite acceder al catálogo
