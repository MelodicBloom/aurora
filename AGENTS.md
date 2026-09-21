# AGENTS.md — Aurora Codex Operating Contract

## Mission

Establish Aurora as the canonical portable implementation of the Aurora collage visual language.

Translate aesthetics into explicit, inspectable, reusable controls:

```
observation → phenomenon → semantic intent → token → mechanism
            → component/effect → composition rule → motion rule
            → specimen → verification receipt
```

Do not build one-off showcase pages as the architecture.

## Mandatory first action

Before production implementation:

1. Record repository state:
   - `git status --short --branch`
   - `git branch -a`
   - `git log -12 --oneline --decorate`
   - `git rev-parse HEAD`
2. Inventory manifests, source, tests, workflows, docs, assets, TODO/FIXME markers.
3. Create `artifacts/repo-audit.md` bound to the exact HEAD SHA.
4. Run existing safe build/test commands if present.
5. Preserve existing valid conventions.
6. Do not perform destructive operations.

## Preferred architecture

Unless repository evidence gives a better reason:

- Node 22+
- pnpm
- TypeScript strict
- React
- Vite
- Storybook
- Vitest
- Playwright
- axe accessibility checks

Prefer a portable visual-system/library plus specimen gallery over a full product app.

## Canonical layers

```
tokens/
grammar/
src/
  primitives/
  composition/
  effects/
  motion/
  motifs/
  layout/
  utilities/
  accessibility/
schemas/
fixtures/
stories/
docs/
tests/
artifacts/
```

Adapt paths if an existing valid structure emerges.

## Design-system contract

Aurora should distinguish:

```
primitive value
  → semantic role
  → Aurora-specific behavior
  → component consumption
```

Prefer DTCG-compatible token syntax. Avoid unexplained raw values scattered through components.

## Determinism

Any fixture using randomness must expose a stable seed.

Given the same recipe, seed, viewport, and assets, structural output must be reproducible.

## Effect rules

Prefer CSS when sufficient.
Prefer SVG when it cleanly expresses the effect.
Use WebGL only when the visual mechanism genuinely benefits from GPU rendering.
GPU effects require capability detection and a non-GPU fallback.

## Motion rules

Motion is semantic, not decorative noise.
Honor `prefers-reduced-motion`.
Continuous decorative motion must degrade to static composition or brief fades.

## Testing contract

Target:

- typecheck
- lint
- unit/component tests
- accessibility tests
- production build
- deterministic visual fixtures
- no mobile horizontal overflow

Do not weaken a test merely to make CI green.

## Dependency rule

For every new dependency, record:

- requirement it satisfies
- why existing platform capabilities are insufficient
- bundle/runtime cost
- fallback or removal path

Do not add large libraries for convenience alone.

## Decision receipts

Consequential decisions belong in `docs/decisions/DECISION-LEDGER.md`.

Record:

- ID/date
- problem
- evidence
- alternatives
- decision
- tradeoffs
- reversibility
- files affected
- validation

## Subagent protocol

Parallelize evidence gathering and non-overlapping work only.

Recommended initial roles:

- repository archaeologist → `artifacts/repo-audit.md`
- visual-language analyst → `docs/visual-language-draft.md`
- token architect → `artifacts/token-proposal/`
- QA analyst → `artifacts/qa-baseline.md`

If write surfaces overlap, serialize the work.

## IF / THEN rules

- IF multiple lockfiles appear, THEN stop dependency mutation and document the conflict.
- IF existing tokens appear, THEN map/extend rather than create parallel authority.
- IF implementation can be CSS, THEN do not introduce WebGL.
- IF SVG is the cleaner mechanism, THEN prefer SVG.
- IF GPU effects are necessary, THEN isolate them behind fallback boundaries.
- IF snapshots are unstable, THEN find nondeterministic inputs before changing thresholds.
- IF a fixture uses randomness, THEN require a stable seed.
- IF an API is externally consumed, THEN preserve compatibility or document migration.
- IF agents disagree, THEN preserve competing evidence and resolve by evidence.
- IF a requirement is ambiguous, THEN choose the most reversible architecture and document it.
- IF an operation is destructive, THEN stop.

## Initial milestone

Do not label the first milestone DONE.

Target status:

```
READY_FOR_HUMAN_VISUAL_REVIEW
```

Only after:

- exact baseline SHA recorded
- architecture contract established
- token model established
- collage recipe schema validated
- deterministic fixtures exist
- foundational primitives render
- reduced-motion behavior works
- accessibility baseline passes
- production build passes
- QA/build receipt exists
- limitations are explicit
