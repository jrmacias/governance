# Gherkin version of the IMPaCT cohort requirements catalog, category
# "Architecture" (ARC-001 to ARC-014). Translated from Spanish to
# English. Source file:
# Recopilacion_requisitos_impact_cohorte_v01(Catalogo_requisitos).csv (workspace root)
# The requirement type is noted as a comment on each scenario.

Feature: Architecture of the IMPaCT cohort platform
  Data architecture, integrations (Trusted Research Environment, BSC
  platforms, OMOP ingestion), data model, and availability constraints
  of the platform.

  # ARC-001 (Restriction)
  Scenario: ARC-001 - Data repositories centralized in the CIBER infrastructure
    Given any data repository used by the platform
    Then it is centralized in the CIBER infrastructure

  # ARC-002 (Functional)
  Scenario: ARC-002 - First version integrates only clinical questionnaire data
    Given the first version of the platform is deployed
    When information is integrated into the platform
    Then only information coming from clinical questionnaires is integrated

  # ARC-003 (Functional)
  Scenario: ARC-003 - Aggregated information structured by concept sets and forms
    Given the platform aggregates information
    Then it is structured using business-defined concept sets and forms

  # ARC-004 (Functional)
  Scenario: ARC-004 - Integration with the BSC Trusted Research Environment
    Given the platform is integrated with the Trusted Research Environment (TRE/VRE) solution of the BSC
    When a researcher accesses data or analysis resources
    Then the access is controlled through the TRE/VRE

  # ARC-005 (Functional)
  Scenario: ARC-005 - Unified authentication through the BSC VRE
    Given an authorized user
    When the user authenticates to the platform
    Then the authentication is unified through the authentication system of the BSC VRE

  # ARC-006 (Functional)
  Scenario: ARC-006 - Analysis tools available inside the TRE/VRE
    Given a user is inside the Trusted Research Environment (TRE/VRE)
    Then the user can access Stata, Jamovi, R, and Jupyter notebooks

  # ARC-007 (Restriction)
  Scenario: ARC-007 - No direct access to the production OMOP database
    Given the platform reads source data
    Then it never accesses the production OMOP database directly

  # ARC-008 (Functional)
  Scenario: ARC-008 - Synchronization from periodic OMOP copies
    Given a copy of the OMOP database provided periodically by the ISCIII
    When the platform performs a synchronization
    Then the information is updated from that copy

  # ARC-009 (Restriction)
  Scenario: ARC-009 - Synchronization follows the OMOP publication periodicity
    Given the ISCIII publishes OMOP copies with a given periodicity
    Then the platform synchronizes at a frequency adapted to that periodicity

  # ARC-010 (Functional)
  # The update process is manual, triggered from the client side, and is
  # always carried out during the night. New versions of the source
  # database are assumed to be published infrequently and in large data
  # batches.
  Scenario: ARC-010 - Update pipeline from a new OMOP database version
    Given the ISCIII has provided a new version of the OMOP database
    When the update is triggered from the client side during the nightly maintenance window
    Then the platform executes the update pipeline automatically
    And it recomputes and ingests the data coming from the new version

  # ARC-010 (Functional) - user-facing behavior during the update
  Scenario: ARC-010 - Service maintenance page during the update
    Given the nightly data update process is in progress
    When a user attempts to access the platform
    Then the platform suspends user access temporarily
    And it displays a "Service under maintenance" page

  # ARC-011 (Functional)
  Scenario: ARC-011 - Data catalog integrated with the BSC Data Access Committee
    Given the data catalog of the platform
    Then it is integrated with the Data Access Committee (DAC) platform of the BSC

  # ARC-012 (Functional)
  Scenario: ARC-012 - Data catalog integrated with the BSC TRE/VRE
    Given the data catalog of the platform
    Then it is integrated with the Trusted Research Environment (TRE/VRE) of the BSC

  # ARC-013 (Functional)
  # Open item: the source requirement is phrased as an open question
  # (it ends with a question mark) and is pending confirmation.
  Scenario: ARC-013 - Integration with the corporate re-identification and anonymization solution
    Given data requires re-identification or anonymization
    Then the platform integrates with the corporate solution for data re-identification and anonymization

  # ARC-014 (Functional)
  Scenario: ARC-014 - Standards-based data modeling
    Given the data is modeled by the platform
    Then the model is flexible, adaptable, and based on standards, using OMOP as the source database
