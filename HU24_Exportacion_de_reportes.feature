Feature: Exportación de reportes
  Como usuario
  Quiero exportar mis datos a PDF o Excel
  Para compartirlos con mi veterinario

  Scenario: Exportar a PDF o Excel con datos
    Given existen datos en el periodo seleccionado
    When el usuario elige 'Exportar' a PDF/Excel y confirma
    And la app genera el archivo y lo descarga
    Then el sistema inicia la descarga del archivo

  Scenario: No exportar si no hay datos
    Given no hay datos en el rango seleccionado
    When el usuario intenta exportar y confirma
    And la app valida la ausencia de datos
    Then la app avisa 'No hay datos para exportar'

