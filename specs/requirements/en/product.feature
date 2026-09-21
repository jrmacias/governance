# Gherkin version of the IMPaCT cohort requirements catalog, category
# "Product" (PRO-001 to PRO-012). Translated from Spanish to English.
# Source file:
# Recopilacion_requisitos_impact_cohorte_v01(Catalogo_requisitos).csv (workspace root)
# The requirement type is noted as a comment on each scenario.
# PRO-002 to PRO-008 were validated by cohort agreement (minutes of
# 2026-06-01).

Feature: Product of the IMPaCT cohort platform
  Public portal, request management, user experience, and platform
  communication features.

  # PRO-001 (Functional)
  Scenario: PRO-001 - Public data catalog portal in the first version
    Given the first version of the platform is deployed
    When a user of any profile, with a focus on researchers, opens the public portal
    Then the user can consult the data catalog through aggregated information

  # PRO-002 (Functional)
  Scenario: PRO-002 - Request registration and storage
    Given a user submits a request
    When the platform registers the request
    Then it is stored in a centralized database
    And it includes at least an identifier, title, abstract, keywords, date, status, and requesting user

  # PRO-003 (Functional)
  Scenario: PRO-003 - Request search and filters
    Given requests are stored in the platform
    When a user searches or filters by keywords, status, date, topic, or requester
    Then the platform displays the matching requests

  # PRO-004 (Functional)
  Scenario: PRO-004 - Request lifecycle management
    Given a registered request
    When its lifecycle is administered
    Then it is classified as one of the following: pending, under review, approved, rejected, or closed

  # PRO-005 (Functional)
  Scenario: PRO-005 - Automatic request metrics
    Given requests exist in the platform
    Then the platform generates automatically the total number of requests, the number of approved, rejected, and pending requests, and the approval rates

  # PRO-006 (Functional)
  Scenario: PRO-006 - Reports and dashboards
    Given request data exists in the platform
    Then the platform generates reports and dashboards with indicators, trends, and analysis of the most requested and approved topics

  # PRO-007 (Functional)
  Scenario: PRO-007 - Export in standard formats
    Given data or a report is available in the platform
    When a user exports it for analysis and distribution
    Then it is provided in standard formats such as Excel, CSV, or PDF

  # PRO-008 (Functional)
  Scenario: PRO-008 - Historical traceability of requests
    Given a request undergoes modifications, reviews, or decisions
    Then the platform keeps a historical record of each of them
    And the record guarantees the traceability of the process

  # PRO-009 (Functional)
  Scenario: PRO-009 - Internationalization of the user interface
    Given a user is using the platform
    When the user selects a supported language
    Then the user interface is displayed in that language

  # PRO-010 (Functional)
  Scenario: PRO-010 - Two independent news managers
    Given the platform provides two independent news managers
    Then the first manages the public information portal for participants and observers
    And the second publishes communications related to the use and operation of the platform for researchers

  # PRO-011 (Functional)
  Scenario: PRO-011 - Integrated navigation between the institutional and the public portals
    Given a user is browsing the institutional portal of the Cohort or the public portal of the platform
    When the user follows the navigation links
    Then the links are persistent and accessible, allowing integrated navigation between both portals

  # PRO-012 (Functional)
  Scenario: PRO-012 - Public landing page
    Given a user opens the public landing page of the platform
    Then it provides the information needed to understand the purpose of the platform, the available functionality, and the procedure for accessing and using it
