Feature: Recordatorio de mantenimiento
  Como usuario
  Quiero recordatorio de mantenimiento
  Para evitar fallas

  Scenario: Enviar recordatorio en la fecha configurada
    Given el usuario configura recordatorios de limpieza o mantenimiento
    When llega la fecha y la app está activa
    And el sistema evalúa la programación
    Then entonces recibe 'Limpia el comedero/bebedero'

  Scenario: No enviar si desactivado
    Given el usuario desactiva los recordatorios
    When llega la fecha configurada y la preferencia sigue desactivada
    And la app verifica la preferencia
    Then no se envían notificaciones

