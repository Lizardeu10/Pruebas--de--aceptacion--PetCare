Feature: Reporte de incidencias
  Como usuario
  Quiero reporte de incidencias
  Para cumplir el objetivo de la historia

  Scenario: Crear ticket con descripción válida
    Given ocurrió un fallo en el sistema
    When el usuario abre 'Soporte', describe el problema y envía el reporte
    And la app registra el ticket y genera un número de caso
    Then el sistema muestra el número de caso al usuario

  Scenario: Validación por descripción vacía
    Given la descripción del problema está vacía
    When el usuario intenta enviar el reporte y no completa campos obligatorios
    And la app valida los campos y detecta que falta información
    Then la app muestra validaciones y no crea el ticket

