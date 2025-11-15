Feature: Mensajes motivacionales
  Como usuario
  Quiero mensajes motivacionales
  Para tener una experiencia más amena

  Scenario: Mostrar mensaje al cumplir meta diaria
    Given la función está activada y se cumple la meta diaria (raciones completas)
    When no hay bloqueos en el flujo
    And la app detecta que se cumplió la meta
    Then se muestra un mensaje positivo

  Scenario: No mostrar si función desactivada
    Given el usuario desactiva la función de mensajes motivacionales
    When se cumple la meta diaria pero la preferencia está desactivada
    And la app verifica la preferencia
    Then no se muestra mensaje motivacional

