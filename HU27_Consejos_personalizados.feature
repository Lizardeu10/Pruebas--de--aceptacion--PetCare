Feature: Consejos personalizados
  Como usuario
  Quiero consejos personalizados
  Para cumplir el objetivo de la historia

  Scenario: Mostrar consejos con patrones detectados
    Given existen reportes recientes y hay patrones relevantes
    When el usuario abre 'Consejos' y la app analiza los datos
    And la app genera recomendaciones concretas
    Then se muestran recomendaciones personalizadas

  Scenario: Indicar insuficiencia de información
    Given no hay suficiente información para generar consejos
    When el usuario solicita consejos y no se cumplen los criterios mínimos
    And la app verifica la disponibilidad de datos
    Then la app indica 'Aún no hay consejos'

