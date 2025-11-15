Feature: Registro de mascota
  Como usuario
  Quiero agregar mi primera mascota al sistema
  Para personalizar su alimentación

  Scenario: Agregar primera mascota con datos válidos
    Given el usuario tiene sesión iniciada
    When accede a 'Agregar mascota'
    And completa nombre, especie, edad y peso
    Then la mascota se guarda y aparece en su lista

  Scenario: Validación por nombre vacío
    Given el usuario está en 'Agregar mascota'
    When deja el nombre vacío
    And presiona 'Guardar'
    Then el sistema muestra validación y no guarda el perfil

