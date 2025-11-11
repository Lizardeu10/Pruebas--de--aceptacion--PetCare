Feature: Compartir acceso familiar
  Como usuario
  Quiero compartir acceso familiar
  Para cumplir el objetivo de la historia

  Scenario: Invitar familiar y aceptar acceso
    Given el usuario es administrador de la cuenta
    When invita a un familiar por correo y este acepta la invitación
    And la app procesa la aceptación
    Then el familiar aparece con acceso compartido

  Scenario: Error si correo no existe
    Given el usuario envía una invitación a un correo que no existe
    When el sistema valida la dirección y detecta error
    And la app muestra error y no crea el acceso
    Then no se otorga el acceso

