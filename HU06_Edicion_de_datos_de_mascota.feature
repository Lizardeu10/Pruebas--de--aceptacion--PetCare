Feature: Edición de datos de mascota
  Como usuario
  Quiero editar de datos de mascota
  Para mantener sus datos actualizados

  Scenario: Actualizar peso exitoso
    Given existe una mascota registrada
    When el usuario actualiza su peso y guarda
    And los cambios se procesan
    Then el perfil muestra el nuevo peso inmediatamente

  Scenario: Validación por peso fuera de rango
    Given el usuario edita datos de la mascota
    When ingresa un peso fuera del rango permitido y guarda
    And la app valida el valor
    Then el sistema muestra validación y no aplica cambios

