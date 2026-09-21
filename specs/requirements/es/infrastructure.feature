# Versión en español de la especificación Gherkin del catálogo de
# requisitos de la cohorte IMPaCT, categoría "Infraestructura"
# (INF-001 a INF-003). La versión canónica es la inglesa:
# specs/requirements/en/infrastructure.feature.
# Fuente original:
# Recopilacion_requisitos_impact_cohorte_v01(Catalogo_requisitos).csv (raíz del workspace)
# Las palabras clave de Gherkin se mantienen en inglés según el
# estándar del proyecto; solo el texto de los escenarios está en
# español. El tipo de requisito se anota como comentario en cada
# escenario.

Feature: Infraestructura de la plataforma de la cohorte IMPaCT
  Escalabilidad, entorno de despliegue y restricciones de acceso de la
  infraestructura de la plataforma.

  # INF-001 (No funcional)
  Scenario: INF-001 - Capacidad inicial de 200 usuarios concurrentes
    Given 200 usuarios concurrentes distribuidos entre distintas Comunidades Autónomas
    When utilizan la plataforma
    Then la plataforma soporta la carga

  # INF-001 (No funcional) - acceso inicial
  Scenario: INF-001 - Acceso inicial concedido a las direcciones IP de los nodos de la cohorte IMPaCT
    Given la plataforma se encuentra en la fase de despliegue inicial
    Then se concede acceso a las direcciones IP de los diferentes nodos de la cohorte IMPaCT

  # INF-002 (No funcional)
  Scenario: INF-002 - Escalabilidad hasta cobertura nacional
    Given el número de usuarios se amplía hasta la cobertura nacional
    Then la arquitectura soporta la ampliación sin rediseños funcionales

  # INF-003 (Restricción)
  Scenario: INF-003 - Despliegue en la infraestructura gestionada por el CIBER
    Given la plataforma se despliega
    Then se ejecuta en la infraestructura gestionada por el CIBER
