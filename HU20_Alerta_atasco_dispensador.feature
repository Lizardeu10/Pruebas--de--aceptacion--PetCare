Feature: Alerta de atasco de dispensador
  Como usuario
  Quiero recibir alertas cuando el dispensador se atasque o falle
  Para resolverlo rápido

  Scenario: Detectar y notificar atasco
    Given hay una ración programada
    When el motor detecta resistencia y no se libera alimento
    And el sistema detecta la condición
    Then la app envía alerta 'Posible atasco'

  Scenario: No notificar cuando funciona normal
    Given el dispensador funciona normalmente y el sensor confirma
    When se ejecutan las raciones sin incidencias
    And la app verifica la confirmación del sensor
    Then entonces no se envía alerta de atasco

