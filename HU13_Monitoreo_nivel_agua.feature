Feature: Monitoreo del nivel de agua
  Como usuario
  Quiero ver el nivel de agua en tiempo real
  Para asegurarme de que nunca falte

  Scenario: Mostrar nivel en tiempo real
    Given el bebedero está conectado
    When el usuario abre 'Hidratación' y la lectura es válida
    And la app obtiene la lectura
    Then se muestra el nivel en tiempo real

  Scenario: Fallo de lectura del sensor
    Given el sensor de agua falla
    When el usuario intenta leer el nivel y no hay datos
    And la app detecta la ausencia de lectura
    Then la app muestra 'Lectura no disponible' e invita a revisar el bebedero

