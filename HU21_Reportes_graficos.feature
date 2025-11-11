Feature: Reportes gráficos
  Como usuario
  Quiero reportes gráficos
  Para cumplir el objetivo de la historia

  Scenario: Mostrar reportes por periodo con datos
    Given existen datos en el sistema
    When el usuario selecciona 'Diario/Semanal/Mensual' y hay registros
    And la app genera los gráficos
    Then se muestran gráficos con totales por periodo

  Scenario: Mostrar mensaje sin datos
    Given no hay datos para el periodo solicitado
    When el usuario intenta ver un periodo vacío
    And la app detecta ausencia de datos
    Then se muestra el mensaje 'Sin datos disponibles'

