Feature: Reporte de consumo de agua
  Como usuario
  Quiero reporte de consumo de agua
  Para entender los hábitos de hidratación

  Scenario: Ver gráfico semanal con datos
    Given existen datos de consumo
    When el usuario abre el gráfico semanal y hay registros
    And la app carga los datos
    Then ve barras por día con volumen estimado

  Scenario: Vista vacía si no hay datos
    Given no hay datos en el rango seleccionado
    When el usuario abre el gráfico y el rango no tiene registros
    And la app intenta cargar y no encuentra datos
    Then se muestra un estado vacío con sugerencias para iniciar el monitoreo

