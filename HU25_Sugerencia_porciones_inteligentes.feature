Feature: Sugerencia de porciones inteligentes
  Como usuario
  Quiero sugerencia de porciones inteligentes
  Para asegurar una alimentación adecuada y mantener su salud en óptimas condiciones

  Scenario: Sugerencia existosa con historial suficiente
    Given la mascota tiene peso y edad registrados
    When el usuario abre 'Sugerencias' y hay suficiente historial
    And el sistema calcula recomendación
    Then la app propone una porción recomendada

  Scenario: Indicar datos faltantes si no hay historial
    Given faltan datos clave o historial mínimo
    When el usuario solicita sugerencia y no hay historial suficiente
    And la app valida la condición
    Then la app indica los datos faltantes

