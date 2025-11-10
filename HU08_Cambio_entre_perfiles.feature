Feature: Cambio entre perfiles
  Como usuario
  Quiero cambio entre perfiles
  Para cumplir el objetivo de la historia

  Scenario: Cambio de perfil exitoso
    Given hay varias mascotas en la cuenta
    When el usuario selecciona otra en el selector
    And la vista se actualiza con los datos de la mascota seleccionada
    Then se muestran sus rutinas e historial correspondientes

  Scenario: Fallo por pérdida de conexión al cambiar
    Given hay varias mascotas
    When el usuario intenta cambiar de perfil y la carga falla por pérdida de conexión
    And la carga no se completa
    Then la app informa 'No se pudo cargar el perfil' y mantiene el actual

