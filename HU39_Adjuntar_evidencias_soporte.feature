Feature: Adjuntar evidencias al soporte
  Como usuario
  Quiero adjuntar evidencias al soporte
  Para cumplir el objetivo de la historia

  Scenario: Adjuntar archivo permitido al ticket
    Given tengo un ticket de soporte abierto
    When selecciono 'Adjuntar evidencia' y elijo un archivo permitido dentro del límite de tamaño
    And la app sube el archivo y lo asocia al ticket
    Then la app muestra una confirmación con vista previa

  Scenario: Rechazar archivo no permitido o demasiado grande
    Given intento adjuntar un archivo no permitido o que supera el tamaño máximo
    When presiono 'Subir' y la validación se ejecuta
    And la validación falla por formato o tamaño
    Then la app muestra un mensaje de error y no adjunta el archivo

