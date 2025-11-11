Feature: Notificación de reconexión
  Como usuario
  Quiero notificación de reconexión
  Para cumplir el objetivo de la historia

  Scenario: Enviar notificación al recuperar conectividad
    Given el dispositivo estuvo offline
    When recupera la conectividad y la app está en segundo plano
    And la app detecta la reconexión
    Then se envía notificación 'Conectividad restablecida'

  Scenario: No enviar si notificaciones desactivadas
    Given el usuario desactiva las notificaciones
    When ocurre la reconexión y la preferencia permanece desactivada
    And la app verifica la preferencia del usuario
    Then no se envía ninguna alerta

