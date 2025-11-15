Feature: Alerta de conexión o energía
  Como usuario
  Quiero recibir alertas cuando haya fallas de conexión o energía
  Para revisar el sistema

  Scenario: Notificar fallo de energía o internet
    Given el dispositivo pierde energía o internet
    When ocurre el evento y la app tiene permisos de notificación
    And el sistema detecta la falla
    Then se envía alerta 'Conexión/Energía perdida'

  Scenario: No generar alertas falsas
    Given el dispositivo permanece estable y no hay incidentes
    When no ocurren cambios críticos
    And la app evalúa el estado
    Then no se generan alertas falsas

