# Versión en español de la especificación Gherkin del catálogo de
# requisitos de la cohorte IMPaCT, categoría "Arquitectura"
# (ARC-001 a ARC-014). La versión canónica es la inglesa:
# specs/requirements/en/architecture.feature.
# Fuente original:
# Recopilacion_requisitos_impact_cohorte_v01(Catalogo_requisitos).csv (raíz del workspace)
# Las palabras clave de Gherkin se mantienen en inglés según el
# estándar del proyecto; solo el texto de los escenarios está en
# español. El tipo de requisito se anota como comentario en cada
# escenario.

Feature: Arquitectura de la plataforma de la cohorte IMPaCT
  Arquitectura de datos, integraciones (Entorno de Investigación de
  Confianza, plataformas del BSC, ingesta de OMOP), modelo de datos y
  restricciones de disponibilidad de la plataforma.

  # ARC-001 (Restricción)
  Scenario: ARC-001 - Repositorios de datos centralizados en la infraestructura del CIBER
    Given cualquier repositorio de datos utilizado por la plataforma
    Then está centralizado en la infraestructura del CIBER

  # ARC-002 (Funcional)
  Scenario: ARC-002 - La primera versión integra únicamente información de cuestionarios clínicos
    Given la primera versión de la plataforma está desplegada
    When se integra información en la plataforma
    Then únicamente se integra información procedente de cuestionarios clínicos

  # ARC-003 (Funcional)
  Scenario: ARC-003 - Información agregada estructurada por Concept Sets y formularios
    Given la plataforma agrega información
    Then esta se estructura utilizando Concept Sets definidos por negocio y formularios

  # ARC-004 (Funcional)
  Scenario: ARC-004 - Integración con el entorno de investigación de confianza del BSC
    Given la plataforma está integrada con la solución de Entorno de Investigación de Confianza (TRE/VRE) del BSC
    When un investigador accede a datos o recursos de análisis
    Then el acceso se controla a través del TRE/VRE

  # ARC-005 (Funcional)
  Scenario: ARC-005 - Autenticación unificada a través del VRE del BSC
    Given un usuario autorizado
    When el usuario se autentica en la plataforma
    Then la autenticación es unificada a través del sistema de autenticación del VRE del BSC

  # ARC-006 (Funcional)
  Scenario: ARC-006 - Herramientas de análisis disponibles dentro del TRE/VRE
    Given un usuario está dentro del Entorno de Investigación de Confianza (TRE/VRE)
    Then el usuario puede acceder a Stata, Jamovi, R y Jupyter notebooks

  # ARC-007 (Restricción)
  Scenario: ARC-007 - Sin acceso directo a la base de datos OMOP de producción
    Given la plataforma lee datos de origen
    Then nunca accede directamente a la base de datos OMOP de producción

  # ARC-008 (Funcional)
  Scenario: ARC-008 - Sincronización a partir de copias periódicas de OMOP
    Given una copia de la base de datos OMOP proporcionada periódicamente por el ISCIII
    When la plataforma realiza una sincronización
    Then la información se actualiza a partir de dicha copia

  # ARC-009 (Restricción)
  Scenario: ARC-009 - La sincronización sigue la periodicidad de publicación de OMOP
    Given el ISCIII publica copias de OMOP con una periodicidad dada
    Then la plataforma se sincroniza con una frecuencia adaptada a esa periodicidad

  # ARC-010 (Funcional)
  # El proceso de actualización es manual, mediante trigger desde la
  # parte de cliente, y se realiza en cualquier caso de forma
  # nocturna. Se asume que las nuevas versiones de la base de datos
  # de origen se publican de forma poco frecuente y en grandes lotes
  # de datos.
  Scenario: ARC-010 - Pipeline de actualización a partir de una nueva versión de la base de datos OMOP
    Given el ISCIII ha proporcionado una nueva versión de la base de datos OMOP
    When la actualización se dispara desde la parte de cliente durante la ventana de mantenimiento nocturna
    Then la plataforma ejecuta automáticamente la pipeline de actualización
    And recalcula e ingiere los datos procedentes de la nueva versión

  # ARC-010 (Funcional) - comportamiento visible para el usuario durante la actualización
  Scenario: ARC-010 - Página de mantenimiento del servicio durante la actualización
    Given el proceso nocturno de actualización de datos está en curso
    When un usuario intenta acceder a la plataforma
    Then la plataforma suspende temporalmente el acceso de los usuarios
    And muestra una página de "Servicio en mantenimiento"

  # ARC-011 (Funcional)
  Scenario: ARC-011 - Catálogo de datos integrado con el comité de acceso a datos del BSC
    Given el catálogo de datos de la plataforma
    Then está integrado con la plataforma del comité de acceso a datos (Data Access Committee, DAC) del BSC

  # ARC-012 (Funcional)
  Scenario: ARC-012 - Catálogo de datos integrado con el TRE/VRE del BSC
    Given el catálogo de datos de la plataforma
    Then está integrado con el Entorno de Investigación de Confianza (TRE/VRE) del BSC

  # ARC-013 (Funcional)
  # Punto abierto: el requisito original está planteado como pregunta
  # abierta (termina con signo de interrogación) y está pendiente de
  # confirmación.
  Scenario: ARC-013 - Integración con la solución corporativa de reidentificación y anonimización de datos
    Given los datos requieren reidentificación o anonimización
    Then la plataforma se integra con la solución corporativa de reidentificación y anonimización de datos

  # ARC-014 (Funcional)
  Scenario: ARC-014 - Modelado de datos basado en estándares
    Given los datos son modelados por la plataforma
    Then el modelo es flexible, adaptable y basado en estándares, utilizando OMOP como base de datos de origen
