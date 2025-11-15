Feature: Sincronización automática
  Como usuario
  Quiero sincronización automática
  Para mantener la información actualizada sin tener que hacerlo manualmente

  Scenario: Sincronizar datos pendientes al reconectar
    Given hay datos locales pendientes de sincronización
    When vuelve la conexión y el usuario tiene sesión activa
    And la app intenta sincronizar los datos pendientes
    Then los datos se sincronizan automáticamente al servidor

  Scenario: Notificar conflicto de sincronización
    Given hay datos pendientes y ocurre un conflicto al sincronizar
    When vuelve la conexión y se detecta el conflicto
    And la app detecta el conflicto y lo reporta
    Then la app notifica 'Error de sincronización' con opción de reintentar

