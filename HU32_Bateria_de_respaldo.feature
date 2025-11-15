Feature: Batería de respaldo
  Como usuario
  Quiero que el dispositivo tenga batería de respaldo
  Para evitar interrupciones

  Scenario: Mantener rutinas con batería auxiliar
    Given hay corte de luz y la batería entra en uso
    When el nivel de batería es suficiente para mantener rutinas
    And el dispositivo usa la batería auxiliar
    Then el dispositivo mantiene las rutinas programadas

  Scenario: Detener dispositivo si batería agotada
    Given la batería está agotada durante un corte de luz
    When ocurre el corte y la batería no tiene carga
    And el dispositivo se detiene y registra el evento
    Then la app muestra el registro del evento

