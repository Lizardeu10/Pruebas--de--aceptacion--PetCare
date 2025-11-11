Feature: Cámara en vivo
  Como usuario
  Quiero cámara en vivo
  Para cumplir el objetivo de la historia

  Scenario: Mostrar video en tiempo real
    Given el dispositivo tiene cámara y hay conexión estable
    When el usuario abre la vista en vivo y la app solicita el stream
    And la app recibe el stream
    Then se muestra el video en tiempo real

  Scenario: Manejo de fallo de transmisión
    Given la cámara está ocupada o falla y no hay stream disponible
    When el usuario intenta iniciar la transmisión
    And la app detecta el error en el stream
    Then la app muestra 'No se pudo iniciar la transmisión'

