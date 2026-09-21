# Versión en español de la especificación Gherkin del catálogo de
# requisitos de la cohorte IMPaCT, categoría "Seguridad"
# (SEG-001 a SEG-004). La versión canónica es la inglesa:
# specs/requirements/en/security.feature.
# Fuente original:
# Recopilacion_requisitos_impact_cohorte_v01(Catalogo_requisitos).csv (raíz del workspace)
# Las palabras clave de Gherkin se mantienen en inglés según el
# estándar del proyecto; solo el texto de los escenarios está en
# español. El tipo de requisito se anota como comentario en cada
# escenario.

Feature: Seguridad de la plataforma de la cohorte IMPaCT
  Gestión de identidades, acceso a la infraestructura y reglas de
  autorización de la plataforma.

  # SEG-001 (Funcional)
  Scenario: SEG-001 - Perfiles de usuario mínimos
    Given la plataforma gestiona identidades
    Then soporta, al menos, los siguientes perfiles de usuario: Participante, Observador e Investigador

  # SEG-002 (Restricción)
  Scenario: SEG-002 - Acceso del personal del CNIC a través de la VPN corporativa
    Given el personal autorizado del CNIC necesita acceder a la infraestructura del CIBER
    Then accede a través de la VPN corporativa

  # SEG-003 (Restricción)
  Scenario: SEG-003 - Acceso restringido a los servidores del CIBER
    Given el acceso a los servidores del CIBER
    Then está limitado al personal autorizado para tareas de desarrollo, pruebas, despliegue, monitorización y mantenimiento

  # SEG-004 (Funcional)
  Scenario: SEG-004 - Administradores independientes por gestor de noticias
    Given se asigna un administrador a un gestor de noticias
    Then el administrador gestiona el contenido de dicho gestor de noticias
    And la gestión de contenidos está desacoplada de los demás gestores de noticias
