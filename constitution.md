# DataHub Platform - Constitution

This document states the principles that govern all systems of the
DataHub platform: the backend systems (`doris-cluster`, `etl`,
`postgres-omop`, `rest-api`, and `scudo`), the frontend
(`isciii-ciber`), and the infrastructure and DevOps repositories.

A system may have its own system-level constitution (for example,
`rest-api/constitution.md`). A system-level constitution may add
system-specific principles but must not weaken any principle in this
document. When a specification or an implementation appears to conflict
with this constitution, the conflict must be raised with the project
owner before proceeding.

Each system team is responsible for maintaining its own system-level
constitution using the same split: common principles live in this
document, system-specific principles live in the system's own file.

This constitution changes only through explicit approval by the project
owner, for the same reason as specifications.

## 1. Data sensitivity comes first

The platform serves clinical cohort data. Security and controlled access
out-rank convenience, speed, and feature completeness in every trade-off.

- no clinical data, patient identifiers, or credentials in code, logs, tests, or examples
- access to the data layer is least-privilege by default
- when in doubt about whether data may be stored, logged, or returned, it may not

## 2. The specification is the source of truth

Code exists to implement an approved specification, never the other way
around.

- no code is written that is not explicitly required by the active specification. If a decision is missing, stop work and ask.
- every behavioral change must be explicitly accepted by a human developer before implementation
- every behavioral change updates the specification and its tests in the same change
- when a requirement is missing from the specification, the specification is updated before the code

## 3. The project owner approves specification changes

The specification defines what the system promises. Changing that promise
is a decision, not an edit.

- a specification changes only on an explicit request from the project owner
- the project owner approves every specification change before it is implemented
- proposed changes are discussed with their impact on the system made explicit

## 4. Quality bars are defined per system

Each system defines and documents its quality bar: language and tool
versions, formatting and linting standards, and the test framework. The
bar is applied to every change. (Example: rest-api defines a python
3.12, black/isort/ruff, pytest bar in its `AGENTS.md`.)

## 5. Tests required

- Every implemented feature must have automated tests where practical.
- Requirements that depend on external services (data stores, message queues, cluster services) must have explicit integration tests.
- Tests as a gate: every task ends with passing tests. Moving forward with failing tests is forbidden.

## 6. Minimal stack

No dependency, framework, or service is added when the required functionality can be implemented with the existing stack.

## 7. No magic

Every behavior must be explicit and documented. No behavior is hidden or
implicit.

## 8. No silent failures

Every error must be logged and reported. No error is ignored or silently
swallowed.

## 9. Controlled persistence

Persistent data must have a defined format, version, and validation.
Configuration changes must never silently corrupt existing data.

## 10. No hard-coded values

- Every value, path, etc. that may change must be configurable.
- Every configuration must have a default value.

## 11. No secrets in the repository

- credentials, tokens, and connection strings never live in the repository
- cluster secrets are managed with sealed secrets (see the `helm-chart/sealed-secrets` directory of the workspace)
- example files show the shape of a value, never a real one

## 12. Single language

Code, API names, comments, logs, error messages, and technical
documentation must be written in english, with no abbreviations, acronyms,
slang, emojis, or non-ASCII characters.
