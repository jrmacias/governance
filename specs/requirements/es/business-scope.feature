# Versión en español de la especificación Gherkin del catálogo de
# requisitos de la cohorte IMPaCT, categoría "Negocio" (NEG-001).
# La versión canónica es la inglesa:
# specs/requirements/en/business-scope.feature.
# Fuente original:
# Recopilacion_requisitos_impact_cohorte_v01(Catalogo_requisitos).csv (raíz del workspace)
# Las palabras clave de Gherkin se mantienen en inglés según el
# estándar del proyecto; solo el texto de los escenarios está en
# español. El tipo de requisito se anota como comentario en cada
# escenario.

Feature: Alcance de negocio de la plataforma de la cohorte IMPaCT
  Alcance de utilización soportado por la plataforma.

  # NEG-001 (Funcional)
  Scenario: NEG-001 - Alcance de utilización nacional e internacional
    Given la plataforma es utilizada por sus usuarios
    Then soporta un ámbito de utilización nacional e internacional
