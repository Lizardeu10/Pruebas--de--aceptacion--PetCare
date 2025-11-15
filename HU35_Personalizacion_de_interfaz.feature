Feature: Personalización de interfaz
  Como usuario
  Quiero personalizar la aplicación con fotos y nombres de mis mascotas
  Para identificarlas fácilmente y tener una experiencia más cercana y agradable dentro de la app

  Scenario: Subir foto y editar nombre de mascota
    Given el usuario está en ajustes
    When sube una foto y edita el nombre de la mascota y guarda
    And la app procesa la subida y los cambios
    Then la interfaz muestra la nueva foto y nombre

  Scenario: Validación de formato de imagen
    Given el usuario sube una imagen con formato no soportado
    When intenta guardar los cambios y la app valida el archivo
    And la validación falla por formato o tamaño
    Then la app muestra error y no aplica cambios

