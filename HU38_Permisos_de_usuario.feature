Feature: Permisos de usuario
  Como usuario
  Quiero asignar permisos de control o sólo visualización
  Para mantener la seguridad

  Scenario: Asignar permiso de solo lectura
    Given hay un usuario invitado en la cuenta
    When el administrador asigna 'solo lectura' y guarda
    And la app aplica el permiso al usuario invitado
    Then el invitado puede ver pero no modificar rutinas

  Scenario: Bloquear acción si permisos insuficientes
    Given el invitado con permiso 'solo lectura' intenta cambiar una porción
    When presiona 'Guardar' para modificar la porción
    And la app valida permisos y bloquea la acción
    Then la app notifica la falta de permisos

