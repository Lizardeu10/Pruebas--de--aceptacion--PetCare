Feature: Personalización de alertas
  Como usuario
  Quiero personalizar qué notificaciones deseo recibir
  Para no saturarme

  Scenario: Desactivar alertas específicas
    Given el usuario abre 'Preferencias'
    When desactiva 'alertas de mantenimiento' y guarda
    And la app aplica la preferencia
    Then deja de recibir ese tipo de alertas

  Scenario: No aplicar cambios si no guarda
    Given el usuario no guarda cambios en preferencias
    When sale de 'Preferencias' y vuelve más tarde
    And las preferencias no se guardaron
    Then las alertas siguen como estaban antes

