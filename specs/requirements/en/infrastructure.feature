# Gherkin version of the IMPaCT cohort requirements catalog, category
# "Infrastructure" (INF-001 to INF-003). Translated from Spanish to
# English. Source file:
# Recopilacion_requisitos_impact_cohorte_v01(Catalogo_requisitos).csv (workspace root)
# The requirement type is noted as a comment on each scenario.

Feature: Infrastructure of the IMPaCT cohort platform
  Scalability, deployment environment, and access constraints of the
  platform infrastructure.

  # INF-001 (Non-functional)
  Scenario: INF-001 - Initial capacity of 200 concurrent users
    Given 200 concurrent users distributed across different autonomous communities
    When they use the platform
    Then the platform supports the load

  # INF-001 (Non-functional) - initial access
  Scenario: INF-001 - Initial access granted to the IMPaCT cohort node IP addresses
    Given the platform is in the initial deployment phase
    Then access is granted to the IP addresses of the different IMPaCT cohort nodes

  # INF-002 (Non-functional)
  Scenario: INF-002 - Scalability up to national coverage
    Given the number of users is expanded up to national coverage
    Then the architecture supports the expansion without functional redesigns

  # INF-003 (Restriction)
  Scenario: INF-003 - Deployment on CIBER-managed infrastructure
    Given the platform is deployed
    Then it runs on the infrastructure managed by the CIBER
