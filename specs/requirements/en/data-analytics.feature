# Gherkin version of the IMPaCT cohort requirements catalog, category
# "Data analytics" (DAT-001 to DAT-005). Translated from Spanish to
# English. Source file:
# Recopilacion_requisitos_impact_cohorte_v01(Catalogo_requisitos).csv (workspace root)
# The requirement type is noted as a comment on each scenario.

Feature: Data analytics for the IMPaCT cohort
  Data exploration and analysis capabilities of the platform: real-time
  subcohort creation and statistical, analytical, machine learning and
  artificial intelligence tooling, including the tools available inside
  the Trusted Research Environment (TRE/VRE).

  # DAT-001 (Functional)
  Scenario: DAT-001 - Real-time subcohort creation over materialized groups
    Given a materialized group or concept set that has been previously agreed and ingested into the source databases
    When a user creates a subcohort over that group or concept set
    Then the platform creates the subcohort in real time

  # DAT-002 (Functional)
  Scenario: DAT-002 - Subcohort creation from user-selected variables
    Given a user selects data at variable level through dynamic queries
    When the platform processes the queries
    Then the queries identify the materialized concept sets that contain the selected variables
    And the platform creates the subcohort in real time or near real time including the selected variables

  # DAT-003 (Functional)
  Scenario: DAT-003 - Pre-configured tools for the exploratory data phase
    Given an end user is in the exploratory phase of the data
    When the user works with the pre-configured analysis tools
    Then the platform allows the statistical and analytical exploitation of the data

  # DAT-004 (Functional)
  Scenario: DAT-004 - Advanced analytics and machine learning inside the secure environment
    Given a dataset based on materialized concept sets or dynamically created subcohorts
    When a user analyzes and processes the dataset inside the Trusted Research Environment (TRE/VRE)
    Then the platform provides advanced data analytics, machine learning techniques, and the development and training of artificial intelligence models

  # DAT-005 (Functional)
  Scenario: DAT-005 - Access to secure-environment analysis tools from the platform
    Given analysis tools are available inside the Trusted Research Environment (TRE/VRE)
    When a user works through the platform
    Then the platform provides access to those tools
    And the integration is transparent within the user's workflow
