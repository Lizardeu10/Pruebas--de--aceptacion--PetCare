Feature: Resumen semanal
  Como usuario
  Quiero recibir un resumen automático semanal del bienestar de mis mascotas
  Para mantenerme informado sobre su estado de salud y hábitos

  Scenario: Enviar resumen automático si está habilitado
    Given la semana concluye y el sistema genera el resumen
    When el usuario habilitó la opción de recibir resúmenes
    And el sistema comprueba la configuración
    Then entonces recibe el reporte automático

  Scenario: No enviar si está deshabilitado
    Given el usuario deshabilitó el resumen semanal
    When llega el fin de semana y la preferencia sigue desactivada
    And la app verifica la preferencia
    Then no se envía ningún resumen

