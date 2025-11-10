Feature: Alerta de bebedero vacío
  Como usuario
  Quiero alerta de bebedero vacío
  Para cumplir el objetivo de la historia

  Scenario: Enviar alerta por nivel bajo
    Given el nivel cae por debajo del umbral
    When el sistema detecta el estado 'bajo' y el dispositivo está online
    And la app procesa la alerta
    Then se envía alerta 'Rellena el bebedero'

  Scenario: No enviar alertas innecesarias
    Given el nivel es suficiente y no hay cambios de umbral
    When el usuario está activo en la app
    And no ocurre ningún evento crítico
    Then no se envían alertas innecesarias

