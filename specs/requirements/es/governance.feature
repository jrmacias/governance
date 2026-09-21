# Versión en español de la especificación Gherkin del catálogo de
# requisitos de la cohorte IMPaCT, categoría "Gobernanza"
# (GOV-001 a GOV-006). La versión canónica es la inglesa:
# specs/requirements/en/governance.feature.
# Fuente original:
# Recopilacion_requisitos_impact_cohorte_v01(Catalogo_requisitos).csv (raíz del workspace)
# Las palabras clave de Gherkin se mantienen en inglés según el
# estándar del proyecto; solo el texto de los escenarios está en
# español. El tipo de requisito se anota como comentario en cada
# escenario. GOV-003 a GOV-006 no están especificados por el ISCIII
# pero son de obligado cumplimiento al tratarse de datos de salud.

Feature: Gobernanza y cumplimiento normativo de la plataforma de la cohorte IMPaCT
  Modelo de gobernanza centralizada, gobierno del dato y cumplimiento
  regulatorio (ENS categoría Alta, RGPD, EHDS) de la plataforma.

  # GOV-001 (Restricción)
  # Define el marco institucional sobre el que se construyen todas las
  # decisiones de arquitectura, operación y gobierno del dato.
  Scenario: GOV-001 - Gobernanza centralizada como nodo único
    Given la plataforma opera bajo un modelo de gobernanza centralizado
    Then la cohorte IMPaCT es un único nodo sin federación de datos

  # GOV-002 (Restricción)
  Scenario: GOV-002 - El gobierno del dato sigue el documento oficial del proyecto
    Given el proyecto publica el documento oficial de Gobierno del Dato
    Then el modelo de gobierno del dato de la plataforma es el definido en dicho documento

  # GOV-003 (No funcional)
  Scenario: GOV-003 - Cumplimiento del Esquema Nacional de Seguridad categoría Alta
    Given la plataforma es diseñada, desarrollada y operada
    Then permite el cumplimiento de los requisitos establecidos por el Esquema Nacional de Seguridad (ENS) para la categoría Alta, conforme a la normativa vigente

  # GOV-004 (No funcional)
  Scenario: GOV-004 - Medidas técnicas y organizativas para el cumplimiento del RGPD
    Given la plataforma trata datos personales
    Then implementa las medidas técnicas y organizativas necesarias para facilitar el cumplimiento del Reglamento (UE) 2016/679 (Reglamento General de Protección de Datos, RGPD) y de la normativa nacional que resulte de aplicación

  # GOV-005 (No funcional)
  Scenario: GOV-005 - Cumplimiento del Espacio Europeo de Datos Sanitarios (EHDS)
    Given la solución tiene un alcance definido conforme a la normativa vigente
    Then la plataforma cumple los requisitos funcionales, técnicos y organizativos aplicables establecidos por el Espacio Europeo de Datos Sanitarios (EHDS)

  # GOV-006 (No funcional)
  Scenario: GOV-006 - Capacidades para facilitar auditorías de seguridad
    Given se realiza una auditoría de seguridad conforme a los requisitos establecidos por el Esquema Nacional de Seguridad (ENS)
    Then la plataforma proporciona las evidencias, los registros de auditoría y los mecanismos de trazabilidad necesarios para facilitar la auditoría
