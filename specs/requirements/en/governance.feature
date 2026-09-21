# Gherkin version of the IMPaCT cohort requirements catalog, category
# "Governance" (GOV-001 to GOV-006). Translated from Spanish to English.
# Source file:
# Recopilacion_requisitos_impact_cohorte_v01(Catalogo_requisitos).csv (workspace root)
# The requirement type is noted as a comment on each scenario.
# GOV-003 to GOV-006 are not specified by the ISCIII but are of mandatory
# compliance because the platform handles health data.

Feature: Governance and compliance of the IMPaCT cohort platform
  Centralized governance model, data governance, and regulatory
  compliance (ENS High category, GDPR, EHDS) of the platform.

  # GOV-001 (Restriction)
  # Defines the institutional framework on which all architecture,
  # operation, and data governance decisions are built.
  Scenario: GOV-001 - Centralized governance as a single node
    Given the platform operates under a centralized governance model
    Then the IMPaCT Cohort is a single node with no data federation

  # GOV-002 (Restriction)
  Scenario: GOV-002 - Data governance follows the official project document
    Given the project publishes the official Data Governance document
    Then the data governance model of the platform is the one defined in that document

  # GOV-003 (Non-functional)
  Scenario: GOV-003 - Compliance with the ENS High category
    Given the platform is designed, developed, and operated
    Then it allows compliance with the requirements established by the National Security Scheme (ENS) for the High category, in accordance with current regulations

  # GOV-004 (Non-functional)
  Scenario: GOV-004 - Technical and organizational measures for GDPR compliance
    Given the platform handles personal data
    Then it implements the technical and organizational measures necessary to facilitate compliance with Regulation (EU) 2016/679 (General Data Protection Regulation, GDPR) and the applicable national legislation

  # GOV-005 (Non-functional)
  Scenario: GOV-005 - Compliance with the European Health Data Space (EHDS)
    Given the solution has a defined scope under current regulations
    Then the platform fulfills the applicable functional, technical, and organizational requirements established by the European Health Data Space (EHDS)

  # GOV-006 (Non-functional)
  Scenario: GOV-006 - Capabilities to facilitate security audits
    Given a security audit is carried out under the requirements established by the National Security Scheme (ENS)
    Then the platform provides the necessary evidence, audit logs, and traceability mechanisms to facilitate the audit
