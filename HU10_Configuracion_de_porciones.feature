Feature: Configuración de porciones
  Como usuario
  Quiero definir la cantidad de alimento por porción
  Para controlar su dieta

  Scenario: Definir porción válida
    Given existe un horario programado
    When el usuario define 80 g por ración y guarda
    And los cambios se guardan
    Then la próxima dispensación usará 80 g

  Scenario: Validación por porción mayor al máximo
    Given el usuario define la porción
    When ingresa un valor mayor al máximo permitido y guarda
    And la app valida el valor
    Then el sistema muestra validación y no aplica el cambio

