# Versión en español de la especificación Gherkin del catálogo de
# requisitos de la cohorte IMPaCT, categoría "Analítica de datos"
# (DAT-001 a DAT-005). La versión canónica es la inglesa:
# specs/requirements/en/data-analytics.feature.
# Fuente original:
# Recopilacion_requisitos_impact_cohorte_v01(Catalogo_requisitos).csv (raíz del workspace)
# Las palabras clave de Gherkin se mantienen en inglés según el
# estándar del proyecto; solo el texto de los escenarios está en
# español. El tipo de requisito se anota como comentario en cada
# escenario.

Feature: Analítica de datos para la cohorte IMPaCT
  Capacidades de exploración y análisis de datos de la plataforma:
  creación de subcohortes en tiempo real y herramientas estadísticas,
  analíticas, de aprendizaje automático e inteligencia artificial,
  incluidas las herramientas disponibles dentro del Entorno de
  Investigación de Confianza (TRE/VRE).

  # DAT-001 (Funcional)
  Scenario: DAT-001 - Creación de subcohortes en tiempo real sobre grupos materializados
    Given un grupo materializado o un concept set previamente consensuados e ingeridos en las bases de datos de origen
    When un usuario crea una subcohorte sobre ese grupo o concept set
    Then la plataforma crea la subcohorte en tiempo real

  # DAT-002 (Funcional)
  Scenario: DAT-002 - Creación de subcohortes a partir de variables seleccionadas por el usuario
    Given un usuario selecciona datos a nivel de variable mediante consultas dinámicas
    When la plataforma procesa las consultas
    Then las consultas identifican los concept sets materializados donde se encuentran las variables seleccionadas
    And la plataforma crea la subcohorte en tiempo real o casi tiempo real, incluyendo las variables seleccionadas

  # DAT-003 (Funcional)
  Scenario: DAT-003 - Herramientas preconfiguradas para la fase exploratoria de los datos
    Given un usuario final se encuentra en la fase exploratoria de los datos
    When el usuario trabaja con las herramientas de análisis preconfiguradas
    Then la plataforma permite la explotación estadística y analítica de los datos

  # DAT-004 (Funcional)
  Scenario: DAT-004 - Analítica avanzada y aprendizaje automático dentro del entorno seguro
    Given un conjunto de datos basado en concept sets materializados o en subcohortes creadas dinámicamente
    When un usuario analiza y procesa el conjunto de datos dentro del Entorno de Investigación de Confianza (TRE/VRE)
    Then la plataforma proporciona analítica avanzada de datos, técnicas de aprendizaje automático (Machine Learning) y el desarrollo y entrenamiento de modelos de inteligencia artificial

  # DAT-005 (Funcional)
  Scenario: DAT-005 - Acceso a las herramientas de análisis del entorno seguro desde la plataforma
    Given hay herramientas de análisis disponibles dentro del Entorno de Investigación de Confianza (TRE/VRE)
    When un usuario trabaja a través de la plataforma
    Then la plataforma proporciona acceso a dichas herramientas
    And la integración es transparente dentro del flujo de trabajo del usuario
