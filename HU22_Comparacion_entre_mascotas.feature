Feature: Comparación entre mascotas
  Como usuario
  Quiero comparación entre mascotas
  Para detectar patrones

  Scenario: Comparar métricas entre dos mascotas
    Given hay más de 2 mascotas con datos
    When el usuario selecciona 'Comparar' y elige ambas
    And la app procesa la comparación
    Then ve métricas lado a lado

  Scenario: Aviso si no hay otra mascota
    Given solo hay una mascota con datos
    When el usuario intenta comparar y elige otra inexistente
    And la app valida la selección
    Then la app alerta 'Se necesita otra mascota con datos'

