# Gherkin version of the IMPaCT cohort requirements catalog, category
# "Security" (SEG-001 to SEG-004). Translated from Spanish to English.
# Source file:
# Recopilacion_requisitos_impact_cohorte_v01(Catalogo_requisitos).csv (workspace root)
# The requirement type is noted as a comment on each scenario.

Feature: Security of the IMPaCT cohort platform
  Identity management, infrastructure access, and authorization rules
  of the platform.

  # SEG-001 (Functional)
  Scenario: SEG-001 - Minimum user profiles
    Given the platform manages identities
    Then it supports at least the following user profiles: Participant, Observer, and Investigator

  # SEG-002 (Restriction)
  Scenario: SEG-002 - CNIC staff access through the corporate VPN
    Given authorized CNIC personnel need to access the CIBER infrastructure
    Then they access it through the corporate VPN

  # SEG-003 (Restriction)
  Scenario: SEG-003 - Restricted access to the CIBER servers
    Given access to the CIBER servers
    Then it is limited to authorized personnel for development, testing, deployment, monitoring, and maintenance tasks

  # SEG-004 (Functional)
  Scenario: SEG-004 - Independent administrators per news manager
    Given an administrator is assigned to a news manager
    Then the administrator manages the content of that news manager
    And the content management is decoupled from the other news managers
