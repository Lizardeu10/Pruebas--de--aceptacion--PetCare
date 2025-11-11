Feature: Comunicación por voz
  Como usuario
  Quiero comunicación por voz
  Para cumplir el objetivo de la historia

  Scenario: Transmitir audio a la mascota
    Given el micrófono está habilitado
    When el usuario presiona 'Hablar' y mantiene pulsado
    And la app transmite el audio al dispositivo
    Then la mascota escucha el audio a través del dispositivo

  Scenario: Solicitar permisos si están denegados
    Given los permisos de micrófono están denegados
    When el usuario intenta hablar y presiona el botón
    And la app detecta la falta de permisos
    Then la app solicita permisos o informa el bloqueo

