Feature: Vinculación del dispositivo
  Como usuario
  Quiero vinculación del dispositivo
  Para cumplir el objetivo de la historia

  Scenario: Vinculación por Wi‑Fi exitosa
    Given el dispositivo está encendido
    When el usuario elige 'Vincular dispositivo' por Wi‑Fi y confirma emparejamiento
    And se establece la conexión
    Then la app muestra 'Dispositivo vinculado correctamente'

  Scenario: Fallo al detectar dispositivo
    Given el usuario intenta vincular el dispositivo
    When el dispositivo no es detectado durante 60 segundos
    And pasan 60 segundos sin detección
    Then la app muestra 'No se encontró el dispositivo' y ofrece reintentar

