# Versión en español de la especificación Gherkin del catálogo de
# requisitos de la cohorte IMPaCT, categoría "Interoperabilidad"
# (INT-001). La versión canónica es la inglesa:
# specs/requirements/en/interoperability.feature.
# Fuente original:
# Recopilacion_requisitos_impact_cohorte_v01(Catalogo_requisitos).csv (raíz del workspace)
# Las palabras clave de Gherkin se mantienen en inglés según el
# estándar del proyecto; solo el texto de los escenarios está en
# español. El tipo de requisito se anota como comentario en cada
# escenario. No especificado por el ISCIII pero de obligado
# cumplimiento al tratarse de datos de salud.

Feature: Interoperabilidad de la plataforma de la cohorte IMPaCT
  Integración e interoperabilidad de la plataforma con los entornos
  nacionales y federados de datos de salud.

  # INT-001 (No funcional)
  Scenario: INT-001 - Interoperabilidad con los entornos nacionales y federados de datos de salud
    Given la plataforma se integra con el Espacio Nacional de Datos de Salud, las infraestructuras del ecosistema IMPaCT-Data2 u otras redes federadas
    Then la integración e interoperabilidad siguen los estándares, interfaces y mecanismos de integración definidos por dichos entornos
