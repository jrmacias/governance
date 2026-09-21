# Gherkin version of the IMPaCT cohort requirements catalog, category
# "Interoperability" (INT-001). Translated from Spanish to English.
# Source file:
# Recopilacion_requisitos_impact_cohorte_v01(Catalogo_requisitos).csv (workspace root)
# The requirement type is noted as a comment on each scenario.
# Not specified by the ISCIII but of mandatory compliance because the
# platform handles health data.

Feature: Interoperability of the IMPaCT cohort platform
  Integration and interoperability of the platform with national and
  federated health data environments.

  # INT-001 (Non-functional)
  Scenario: INT-001 - Interoperability with national and federated health data environments
    Given the platform is integrated with the National Health Data Space, the IMPaCT-Data2 ecosystem infrastructure, or other federated networks
    Then the integration and interoperability follow the standards, interfaces, and integration mechanisms defined by those environments
