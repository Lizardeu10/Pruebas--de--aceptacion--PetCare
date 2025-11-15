Feature: Eliminación de mascota
  Como usuario
  Quiero tener la opción de eliminar o desactivar mascotas registradas en el sistema
  Para mantener actualizada mi lista y evitar información innecesaria o duplicada

  Scenario: Desactivar mascota
    Given el usuario ve su lista de mascotas
    When elige 'Desactivar' una mascota y confirma
    And la acción se confirma
    Then la mascota queda inactiva y no aparece en la selección de rutinas

  Scenario: Cancelar eliminación con rutinas activas
    Given el usuario intenta eliminar una mascota con rutinas activas
    When presiona 'Eliminar' pero no confirma la advertencia
    And la eliminación se cancela
    Then el sistema mantiene la mascota

