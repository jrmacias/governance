# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

IMPaCT-Data-Hub (also called DataHub, formerly IMPaCT-Cohorte) is a healthcare metadata platform that centralizes secure access to clinical cohort data. It provides querying, combination, and analysis capabilities for clinical research.

## Security & Authorization Rules

### File System & Read Permissions

- **Project Boundary:** The project root is the `IMPaCT-Data-Hub` workspace directory. Reading files within it (all front-end and back-end modules) is allowed.
- **Upstream & Linked Directory Restriction:** Reading, searching, or accessing files outside the project root — including upstream, parent, or symlinked external directories — is strictly prohibited.
- **Project Owner Authorization Rule:** Any attempt or request to access an external or linked directory requires specific, explicit, and individual approval from the project owner (human user) for that exact path before execution.

## Commit Conventions

- Conventional Commits: `type(scope): description` — lowercase type and scope, imperative mood ("add", "fix", not "added")
- Subject on one line (max two); blank line between subject and body; body explains what and why, not how

## Notes

- The `scudo` package is a Python utility library published to PyPI - see `backend/scudo/DEVELOPMENT.md` for publishing instructions.
- AI coding governance (platform constitution, templates, sync): see `governance/README.md`.
