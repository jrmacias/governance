# Versión en español de la especificación Gherkin del catálogo de
# requisitos de la cohorte IMPaCT, categoría "Operación" (OP-001).
# La versión canónica es la inglesa:
# specs/requirements/en/operations.feature.
# Fuente original:
# Recopilacion_requisitos_impact_cohorte_v01(Catalogo_requisitos).csv (raíz del workspace)
# Las palabras clave de Gherkin se mantienen en inglés según el
# estándar del proyecto; solo el texto de los escenarios está en
# español. El tipo de requisito se anota como comentario en cada
# escenario.

Feature: Operación y mantenimiento de la plataforma de la cohorte IMPaCT
  Proceso de mantenimiento de la base de datos de origen y las
  notificaciones que condicionan la actualización de la plataforma.

  # OP-001 (No funcional)
  Scenario: OP-001 - Notificación anticipada de cambios en la base de datos de origen
    Given el ISCIII prepara una actualización de la base de datos de origen que incluye alguno de los siguientes sucesos:
      | Evento                                                                                                          |
      | Cambios en el esquema de la base de datos (creación, modificación o eliminación de tablas, columnas o tipos de datos) |
      | Cambios en la nomenclatura de tablas o campos (renombrado de variables o columnas)                               |
      | Incorporación de nuevos registros sobre las tablas y campos existentes                                           |
    When la nueva versión se hace disponible
    Then el ISCIII notifica su disponibilidad con antelación suficiente para planificar la actualización de la plataforma
