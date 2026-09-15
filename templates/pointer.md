# Pointer line convention

A constitution only binds an agent if the agent is told to read it.
Every system repo must include one pointer line, in its `AGENTS.md`
(rules section) or, if it has no `AGENTS.md`, in its `CLAUDE.md`:

```text
- read `policies/constitution.md` (platform), `constitution.md` (this system), and the active specification in the `<spec-path>` folder before writing any code.
```

Reference the specification with the system's actual spec location
(example: `rest-api` uses "the active specification in the `spec/`
folder"). If a system has no specification yet, keep the first two
references and drop the spec clause until one exists.
