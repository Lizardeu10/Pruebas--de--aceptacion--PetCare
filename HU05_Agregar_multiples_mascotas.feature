Feature: Agregar múltiples mascotas
  Como usuario
  Quiero agregar múltiples mascotas
  Para cumplir el objetivo de la historia

  Scenario: Agregar segunda mascota válida
    Given el usuario ya tiene una mascota
    When agrega una segunda con datos válidos y presiona 'Guardar'
    And se procesa el guardado
    Then ambas mascotas quedan visibles en la lista

  Scenario: Alerta por duplicado exacto
    Given el usuario agrega una nueva mascota con mismo nombre e identificación
    When presiona 'Guardar'
    And el sistema valida duplicado
    Then la app alerta de duplicado y no crea el registro

