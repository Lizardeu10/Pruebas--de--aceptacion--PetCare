Feature: Historial de alimentación
  Como usuario
  Quiero un historial de alimentación
  Para verificar la rutina

  Scenario: Ver historial de la última semana
    Given existen raciones pasadas
    When el usuario abre 'Historial' y selecciona la última semana
    And la app filtra los registros
    Then ve fecha, hora y porción de cada evento

  Scenario: Filtro sin registros muestra estado vacío
    Given no hay registros en el periodo seleccionado
    When el usuario abre 'Historial' y filtra por ese periodo sin datos
    And la app busca registros y no encuentra ninguno
    Then el sistema muestra 'No hay eventos en el rango seleccionado'

