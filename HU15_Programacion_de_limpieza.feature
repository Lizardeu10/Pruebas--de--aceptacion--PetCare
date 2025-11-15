Feature: Programación de limpieza
  Como usuario
  Quiero programar limpiezas automáticas del bebedero
  Para mantener la higiene

  Scenario: Ejecución de limpieza programada
    Given el usuario configura limpieza semanal
    When llega el día y la hora definidos y el dispositivo lo soporta
    And se ejecuta el ciclo de limpieza
    Then se registra el evento en historial

  Scenario: Función no soportada por el modelo
    Given la función automática no está disponible en el dispositivo
    When el usuario intenta programar y guarda
    And la app detecta que el modelo no soporta la función
    Then la app informa 'Función no soportada por este modelo'

