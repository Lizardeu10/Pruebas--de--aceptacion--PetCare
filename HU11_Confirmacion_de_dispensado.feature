Feature: Confirmación de dispensado
  Como usuario
  Quiero confirmación de dispensado
  Para cumplir el objetivo de la historia

  Scenario: Notificación de dispensado confirmado
    Given hay una ración programada
    When el dispensador ejecuta la ración y el sensor confirma el peso
    And la app recibe la confirmación
    Then la app envía la notificación 'Comida dispensada'

  Scenario: Alerta por fallo de dispensado
    Given hay una ración programada
    When el sensor no detecta salida de alimento y expira el tiempo de confirmación
    And se detecta el fallo
    Then se envía alerta de fallo de dispensado

