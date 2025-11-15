Feature: Programación de horarios
  Como usuario
  Quiero programar horarios de comida diarios
  Para garantizar que mi mascota coma a tiempo

  Scenario: Crear horario diario exitoso
    Given el usuario está en 'Rutinas'
    When crea un horario diario a las 8:00 y guarda
    And el sistema registra la rutina
    Then el horario aparece activo en la lista

  Scenario: Advertencia por hora pasada
    Given el usuario crea un horario
    When selecciona una hora pasada del mismo día y guarda
    And la app valida la hora
    Then la app advierte 'Hora no válida' y no crea la rutina

