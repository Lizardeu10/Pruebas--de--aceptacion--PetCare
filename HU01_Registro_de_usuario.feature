Feature: Registro de usuario
  Como usuario
  Quiero registro de usuario
  Para cumplir el objetivo de la historia

  Scenario: Registro exitoso con correo válido
    Given el usuario abre la app por primera vez
    When selecciona 'Registrarse' e ingresa un correo válido
    And completa los campos obligatorios
    Then el sistema crea la cuenta y muestra la pantalla principal

  Scenario: Registro fallido por correo inválido
    Given el usuario intenta registrarse
    When ingresa un correo con formato inválido
    And presiona 'Crear cuenta'
    Then el sistema muestra un mensaje de error y bloquea el avance

