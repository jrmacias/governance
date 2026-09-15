# IMPaCT-Data-Hub - Governance

This repository is the single source of truth for AI coding governance
of the DataHub platform: the platform constitution, the canonical
platform `CLAUDE.md`, the templates for system-level governance files,
and the sync script that distributes them. It is designed to stand
alone: it can be shared (for example, during project evaluation) without
any other repository.

## Model

Three tiers, most general to most specific:

| Tier | File | Lives in | Owned by |
| --- | --- | --- | --- |
| Platform | `constitution.md` | this repo; synced to each system's `policies/constitution.md` | project owner |
| System | `constitution.md` | each system repo (e.g. `rest-api/constitution.md`) | system team |
| Working | `AGENTS.md`, `CLAUDE.md` | each system repo | system team |

Rules between tiers:

- A lower tier may add rules but must not weaken a rule from a higher tier.
- A system constitution contains only system-specific principles; platform principles are never repeated in it (no drift).
- Working files contain coding rules, environment context, and pointers - not principles.
- Every system's working files must include the pointer line that tells agents to read the platform constitution, the system constitution, and the active specification before writing any code (see `templates/pointer.md`).

## Layout

```text
governance/
├── README.md                        ← this file
├── constitution.md                  ← the 12 platform principles
├── root-CLAUDE.md                   ← canonical platform CLAUDE.md
├── templates/
│   ├── system-constitution.md       ← copy to a system repo as constitution.md
│   └── pointer.md                   ← the pointer-line convention
└── sync.sh                          ← distributes the canonical files
```

## How a system repo consumes this repo

1. Run `governance/sync.sh` from the workspace root.
2. It copies `constitution.md` to `<system>/policies/constitution.md` - a managed copy, marked by a header. Never edit the copy; edit this repo and re-run the script.
3. Commit the `policies/` directory in the system repo, so any single clone of the system is self-contained.
4. Add the pointer line to the system's `AGENTS.md` (or `CLAUDE.md`).

## Onboarding a new system

1. Copy `templates/system-constitution.md` into the system repo as `constitution.md` and fill in the system-specific principles (keep it short).
2. Document the system's quality bar (language, formatting and linting, test framework) in its `AGENTS.md` - the platform requires that a bar exists and is documented (platform principle 4).
3. Add the pointer line (`templates/pointer.md`).
4. Add the repo to the `MEMBERS` list in `sync.sh` and run the script.
5. Commit.

## Change process

- Platform constitution: change only in this repo, only with explicit approval by the project owner, then re-run `sync.sh`.
- System constitution: owned by the system team, same approval rule.
- A synced copy that was edited locally is left alone by `sync.sh` (it prints a notice); `sync.sh --force` overwrites it.

## Notes

- Documentation-only repos (for example `architecture/health-data-platform-knowledge`) are exempt from the system tier.
- The workspace-root `CLAUDE.md` is also a managed copy of `root-CLAUDE.md`; keep edits in this repo.
