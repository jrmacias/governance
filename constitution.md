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

## 1. Security & Data Sensitivity comes first

The platform serves clinical cohort data. Security, privacy, and strict access controls out-rank convenience, speed, and feature completeness in every trade-off.

- No clinical data, patient identifiers, credentials, API tokens, or connection strings in code, repositories, logs, tests, or examples.
- Secrets never live unencrypted in source control; cluster secrets are managed exclusively through sealed secrets (see the `helm-chart/sealed-secrets` workspace directory).
- Example files must only demonstrate data shape, never real values.
- Access to the data layer and system boundaries is least-privilege by default.
- When in doubt about whether data may be stored, logged, transmitted, or returned, it must not be.

## 2. The specification is the source of truth

- every behavioral change must be explicitly accepted by a human developer before implementation
- every behavioral change updates the specification and its tests in the same change
- when a requirement is missing from the specification, the specification is updated before the code

Code exists solely to implement an approved specification, which defines what the system promises, never the other way
around. Changing that promise is an explicit governance decision, never an informal code edit.

- No code is written unless explicitly required by the active specification. If a requirement or decision is missing, stop work until the specification is updated.
- Specifications change only upon explicit approval by the project owner, after proposed changes and their system impact are documented and discussed.
- Every behavioral change updates the specification, its code implementation, and its automated tests within the same change.

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

## 12. Single language

Code, API names, comments, logs, error messages, and technical
documentation must be written in english, with no abbreviations, acronyms,
slang, emojis, or non-ASCII characters.
