Feature: Detección de comportamiento anómalo
  Como usuario
  Quiero detección de comportamiento anómalo
  Para cumplir el objetivo de la historia

  Scenario: Enviar alerta por comportamiento anómalo
    Given la mascota suele comer 2 veces al día
    When el sistema detecta que no comió en el horario y se confirma por sensor
    And se valida la anomalía
    Then entonces envía alerta de anomalía

  Scenario: No generar alerta si hábitos normales
    Given no hay cambios significativos en la ingesta
    When la ingesta está dentro de lo normal y no se violan umbrales
    And la app evalúa los datos
    Then no se genera alerta

