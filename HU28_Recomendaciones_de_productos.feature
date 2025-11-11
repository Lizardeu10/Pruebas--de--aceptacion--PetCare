Feature: Recomendaciones de productos
  Como usuario
  Quiero recomendaciones de productos
  Para cumplir el objetivo de la historia

  Scenario: Listar productos compatibles con la condición registrada
    Given la mascota tiene una condición registrada (ej. sobrepeso)
    When el usuario abre 'Productos sugeridos' y hay catálogo disponible
    And la app filtra productos compatibles
    Then se listan opciones compatibles

  Scenario: Manejar ausencia de catálogo
    Given no hay catálogo disponible
    When el usuario solicita recomendaciones y falla la carga
    And la app detecta la ausencia de catálogo
    Then se muestra 'No hay recomendaciones por el momento'

