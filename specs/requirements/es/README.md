# Requisitos de la cohorte (Gherkin, versión en español)

Versión en español de las especificaciones Gherkin del catálogo de
requisitos de la cohorte IMPaCT
(`Recopilacion_requisitos_impact_cohorte_v01(Catalogo_requisitos).csv`,
en la raíz del workspace, codificado en Windows-1252, escrito en
español). La redacción de los escenarios sigue la del catálogo original.

**Nota de alcance**: los archivos de esta carpeta están en español por
solicitud expresa del propietario del proyecto. Constituyen una
excepción acotada a la regla de idioma de `AGENTS.md` y de la
constitución de la plataforma (documento técnico en inglés, solo
ASCII), que sigue aplicando al resto del repositorio. La versión
**canónica** de la especificación es la inglesa en
`specs/requirements/en/`; en caso de divergencia, prevalece la
versión inglesa.

Las palabras clave de Gherkin se mantienen en inglés
(`Feature`, `Scenario`, `Given`, `When`, `Then`, `And`) para
conservar el estándar Gherkin del proyecto y la compatibilidad con
las herramientas; solo el texto de los escenarios está en español.

Un archivo de especificación por categoría del catálogo:

| Archivo | Categoría | Requisitos |
| --- | --- | --- |
| `data-analytics.feature` | Analítica de datos | DAT-001 a DAT-005 |
| `architecture.feature` | Arquitectura | ARC-001 a ARC-014 |
| `governance.feature` | Gobernanza | GOV-001 a GOV-006 |
| `infrastructure.feature` | Infraestructura | INF-001 a INF-003 |
| `interoperability.feature` | Interoperabilidad | INT-001 |
| `business-scope.feature` | Negocio | NEG-001 |
| `operations.feature` | Operación | OP-001 |
| `product.feature` | Producto | PRO-001 a PRO-012 |
| `security.feature` | Seguridad | SEG-001 a SEG-004 |

Trazabilidad:

- cada escenario lleva el identificador de su requisito en el nombre
  (`Scenario: <ID> - <titulo>`), de modo que cada fila del catálogo
  tiene correspondencia uno a uno (un requisito con varios
  comportamientos distintos se descompone en varios escenarios con el
  mismo ID, p. ej. ARC-010);
- el tipo de requisito del catálogo (Funcional, Restricción, No
  funcional) se anota como comentario en cada escenario;
- PRO-002 a PRO-008 se marcan como validados por acuerdo de la cohorte
  (acta de 2026-06-01);
- ARC-010 incorpora los detalles del proceso de actualización (trigger
  manual nocturno, página de mantenimiento, lotes grandes y poco
  frecuentes) de la columna de justificación del catálogo.

Notas:

- se trata de requisitos a nivel de plataforma, no de contratos de
  endpoints de la API REST; el catálogo no especifica códigos HTTP ni
  cargas y aquí no se inventan;
- ARC-013 está planteado como pregunta abierta en el catálogo original
  y se marca como pendiente de confirmación en `architecture.feature`;
- estos archivos definen el comportamiento futuro previsto, a
  diferencia de los archivos del repositorio rest-api
  (`specs/features/clinic` y `specs/features/core`), que documentan el
  comportamiento actual de la implementación.
