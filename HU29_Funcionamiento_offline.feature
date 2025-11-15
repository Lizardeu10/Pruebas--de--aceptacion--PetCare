Feature: Funcionamiento offline
  Como usuario
  Quiero funcionamiento offline de la aplicación
  Para no interrumpir la alimentación

  Scenario: Ejecución de ración sin internet
    Given no hay internet y el dispositivo está operativo
    When llega un horario programado y el dispositivo ejecuta la ración
    And se guarda el evento localmente
    Then la ración se ejecuta y queda registrada localmente

  Scenario: Reportes en nube no disponibles sin caché
    Given no hay internet y no existe caché de reportes en la nube
    When el usuario intenta ver reportes en la nube
    And la app solicita datos remotos y no encuentra caché
    Then la app informa 'No disponible sin conexión'

