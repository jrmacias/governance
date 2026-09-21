# Cohorte requirements (Gherkin)

Gherkin version of the IMPaCT cohort requirements catalog
(`Recopilacion_requisitos_impact_cohorte_v01(Catalogo_requisitos).csv`,
at the workspace root, encoded in Windows-1252, written in Spanish).
The scenarios are an English translation of the catalog; the original
wording is not reproduced here.

One feature file per catalog category:

| File | Category | Requirements |
| --- | --- | --- |
| `data-analytics.feature` | Data analytics | DAT-001 to DAT-005 |
| `architecture.feature` | Architecture | ARC-001 to ARC-014 |
| `governance.feature` | Governance | GOV-001 to GOV-006 |
| `infrastructure.feature` | Infrastructure | INF-001 to INF-003 |
| `interoperability.feature` | Interoperability | INT-001 |
| `business-scope.feature` | Business | NEG-001 |
| `operations.feature` | Operation | OP-001 |
| `product.feature` | Product | PRO-001 to PRO-012 |
| `security.feature` | Security | SEG-001 to SEG-004 |

Traceability:

- every scenario is named after its requirement ID
  (`Scenario: <ID> - <title>`), so each catalog row maps one to one
  (a requirement with several distinct behaviors maps to several
  scenarios with the same ID, e.g. ARC-010);
- the catalog requirement type (Functional, Restriction, Non-functional)
  is recorded as a comment on each scenario;
- PRO-002 to PRO-008 are marked as validated by cohort agreement
  (minutes of 2026-06-01);
- ARC-010 carries the update-process details (manual nightly trigger,
  maintenance page, large infrequent batches) from the catalog
  justification column.

Notes:

- these are platform-level requirements, not REST API endpoint
  contracts; no HTTP statuses or payloads are specified in the catalog
  and none are invented here;
- ARC-013 is phrased as an open question in the source catalog and is
  flagged as pending confirmation in `architecture.feature`;
- these files define intended future behavior, unlike the feature files
  in the rest-api repo (`specs/features/clinic` and `specs/features/core`),
  which document current implementation behavior.
