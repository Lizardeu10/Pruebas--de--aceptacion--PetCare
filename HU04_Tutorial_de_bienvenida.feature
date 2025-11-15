Feature: Tutorial de bienvenida
  Como usuario
  Quiero recibir un tutorial guiado al iniciar la app
  Para aprender a usar todas las funciones

  Scenario: Completar tutorial al primer ingreso
    Given el usuario ingresa por primera vez
    When inicia el tutorial y avanza por todos los pasos
    And finaliza el tutorial
    Then la app dirige automáticamente a la pantalla principal

  Scenario: Omitir tutorial mediante 'Saltar'
    Given el usuario está en el tutorial
    When presiona 'Saltar' y confirma su decisión
    And la app omite el tutorial
    Then la app lleva al inicio sin errores

