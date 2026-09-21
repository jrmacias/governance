# Versión en español de la especificación Gherkin del catálogo de
# requisitos de la cohorte IMPaCT, categoría "Producto"
# (PRO-001 a PRO-012). La versión canónica es la inglesa:
# specs/requirements/en/product.feature.
# Fuente original:
# Recopilacion_requisitos_impact_cohorte_v01(Catalogo_requisitos).csv (raíz del workspace)
# Las palabras clave de Gherkin se mantienen en inglés según el
# estándar del proyecto; solo el texto de los escenarios está en
# español. El tipo de requisito se anota como comentario en cada
# escenario. PRO-002 a PRO-008 fueron validados por acuerdo de la
# cohorte (acta de 2026-06-01).

Feature: Producto de la plataforma de la cohorte IMPaCT
  Portal público, gestión de solicitudes, experiencia de usuario y
  funciones de comunicación de la plataforma.

  # PRO-001 (Funcional)
  Scenario: PRO-001 - Portal público del catálogo de datos en la primera versión
    Given la primera versión de la plataforma está desplegada
    When un usuario de cualquier perfil, con especial atención al investigador, abre el portal público
    Then el usuario puede consultar el catálogo de datos mediante información agregada

  # PRO-002 (Funcional)
  Scenario: PRO-002 - Registro y almacenamiento de solicitudes
    Given un usuario envía una solicitud
    When la plataforma registra la solicitud
    Then se almacena en una base de datos centralizada
    And incluye, al menos, un identificador, un título, un resumen (abstract), palabras clave, fecha, estado y usuario solicitante

  # PRO-003 (Funcional)
  Scenario: PRO-003 - Búsqueda y filtros de solicitudes
    Given hay solicitudes almacenadas en la plataforma
    When un usuario busca o filtra por palabras clave, estado, fecha, temática o solicitante
    Then la plataforma muestra las solicitudes coincidentes

  # PRO-004 (Funcional)
  Scenario: PRO-004 - Gestión del ciclo de vida de las solicitudes
    Given hay una solicitud registrada
    When se administra su ciclo de vida
    Then se clasifica como una de las siguientes: pendiente, en revisión, aprobada, rechazada o cerrada

  # PRO-005 (Funcional)
  Scenario: PRO-005 - Métricas automáticas de solicitudes
    Given existen solicitudes en la plataforma
    Then la plataforma genera automáticamente el número total de solicitudes, el número de solicitudes aprobadas, rechazadas y pendientes, y las tasas de aprobación

  # PRO-006 (Funcional)
  Scenario: PRO-006 - Informes y cuadros de mando
    Given existen datos de solicitudes en la plataforma
    Then la plataforma genera informes y cuadros de mando con indicadores, tendencias y análisis de las temáticas más demandadas y aprobadas

  # PRO-007 (Funcional)
  Scenario: PRO-007 - Exportación en formatos estándar
    Given hay datos o un informe disponibles en la plataforma
    When un usuario los exporta para su análisis y distribución
    Then se proporcionan en formatos estándar como Excel, CSV o PDF

  # PRO-008 (Funcional)
  Scenario: PRO-008 - Trazabilidad histórica de las solicitudes
    Given una solicitud sufre modificaciones, revisiones o decisiones
    Then la plataforma mantiene un registro histórico de cada una de ellas
    And el registro garantiza la trazabilidad del proceso

  # PRO-009 (Funcional)
  Scenario: PRO-009 - Internacionalización de la interfaz de usuario
    Given un usuario está utilizando la plataforma
    When el usuario selecciona un idioma soportado
    Then la interfaz de usuario se muestra en ese idioma

  # PRO-010 (Funcional)
  Scenario: PRO-010 - Dos gestores de noticias independientes
    Given la plataforma dispone de dos gestores de noticias independientes
    Then el primero gestiona el portal público de información dirigido a participantes y observadores
    And el segundo publica comunicaciones relacionadas con el uso y la operación de la plataforma para investigadores

  # PRO-011 (Funcional)
  Scenario: PRO-011 - Navegación integrada entre el portal institucional y el portal público
    Given un usuario navega por el portal institucional de la Cohorte o el portal público de la plataforma
    When el usuario sigue los enlaces de navegación
    Then los enlaces son persistentes y accesibles, permitiendo una navegación integrada entre ambos portales

  # PRO-012 (Funcional)
  Scenario: PRO-012 - Página de inicio pública
    Given un usuario abre la página de inicio pública de la plataforma
    Then esta proporciona la información necesaria para comprender el propósito de la plataforma, las funcionalidades disponibles y el procedimiento de acceso y utilización
