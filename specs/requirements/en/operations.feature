# Gherkin version of the IMPaCT cohort requirements catalog, category
# "Operation" (OP-001). Translated from Spanish to English. Source file:
# Recopilacion_requisitos_impact_cohorte_v01(Catalogo_requisitos).csv (workspace root)
# The requirement type is noted as a comment on each scenario.

Feature: Operation and maintenance of the IMPaCT cohort platform
  Maintenance process of the source database and the notifications that
  condition platform updates.

  # OP-001 (Non-functional)
  Scenario: OP-001 - Advance notification of source database changes
    Given the ISCIII prepares an update of the source database that includes any of the following events:
      | Event                                                              |
      | Schema changes (creation, modification, or deletion of tables, columns, or data types) |
      | Nomenclature changes of tables or fields (renaming of variables or columns) |
      | Incorporation of new records on existing tables and columns         |
    When the new version is made available
    Then the ISCIII notifies its availability with sufficient advance time to plan the update of the platform
