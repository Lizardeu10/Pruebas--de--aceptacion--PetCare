Feature: Eliminación de mascota
  Como usuario
  Quiero eliminación de mascota
  Para cumplir el objetivo de la historia

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

