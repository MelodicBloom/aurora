# Aurora — Initial Codex Build Order

## Goal

Move the architecture-first repository into a tested, deterministic visual-system prototype without prematurely locking a public API.

## Phase 0 — Truth before implementation

Deliver:

- `artifacts/repo-audit.md`
- `artifacts/baseline-command-results.md`

Record exact HEAD SHA and current repository tree.

Do not scaffold production implementation before this audit is complete.

## Phase 1 — Architecture confirmation

Review:

- `README.md`
- `AGENTS.md`
- `docs/architecture.md`
- `docs/visual-language.md`
- `schemas/collage-recipe.schema.json`

Update the decision ledger with any contradiction or refinement.

Acceptance:

- system boundary is explicit
- visual-system/library role remains justified
- unresolved choices are listed

## Phase 2 — Environment scaffold

If no conflicting evidence appears, establish:

- Node 22+
- pnpm
- TypeScript strict
- React
- Vite
- Storybook
- Vitest
- Playwright
- axe checks

Generate and commit the lockfile intentionally.

Do not add WebGL/Three.js, Framer Motion, GSAP, Zustand, Radix, or other broad dependencies without a recorded requirement.

## Phase 3 — Token substrate

Create DTCG-compatible token files.

Required layers:

- primitive
- semantic
- aurora/spectrum
- aurora/atmosphere
- aurora/collage
- aurora/depth
- aurora/material
- aurora/motion

Add token validation.

## Phase 4 — Recipe model

Implement typed recipe interfaces matching the JSON Schema.

Prove:

```
same recipe + same seed + same viewport + same assets
= reproducible structural output
```

Create at least three recipe fixtures first.

## Phase 5 — Foundational primitives

Start only with the primitives needed to render those fixtures.

Candidates:

- AuroraSurface
- CollageCanvas
- CollageLayer
- CollageFragment
- SpectralField
- AtmosphericGlow
- TextureOverlay
- PaperFragment
- ImageFragment

Avoid broad component-library expansion.

## Phase 6 — Effects and motion

Effects must remain composable and independently testable.

Motion vocabulary:

- emerge
- drift
- bloom
- float
- settle
- stagger
- parallax
- reveal
- crossfade
- scatter
- gather

Honor reduced-motion behavior.

## Phase 7 — Specimen matrix

Implement the fixture matrix defined in `fixtures/README.md`.

Provide controls for:

- seed
- density
- overlap
- asymmetry
- fragment scale
- rotation variance
- depth
- spectral intensity
- grain
- haze
- bloom
- motion amount
- theme

## Phase 8 — QA

Required:

- typecheck passes
- lint passes
- tests pass
- production build passes
- serious/critical accessibility violations absent
- narrow viewport has no horizontal overflow
- deterministic fixtures remain stable
- reduced motion verified

Write:

- `artifacts/qa-report.md`
- `artifacts/accessibility-report.md`
- `artifacts/performance-report.md`
- `artifacts/build-receipt.json`

## Stop gates

STOP implementation and document instead if:

- multiple lockfiles conflict
- repository architecture contradicts this build order
- dependency choice cannot be justified
- a destructive operation would be required
- test instability is unexplained
- deterministic output cannot be reproduced

## External references

Use as standards/reference material:

- Design Tokens Community Group format: https://www.designtokens.org/
- W3C Design Tokens Community Group: https://www.w3.org/community/design-tokens/
- Style Dictionary: https://www.styledictionary.org/
- Storybook React + Vite: https://storybook.js.org/docs/get-started/frameworks/react-vite
- Storybook accessibility testing: https://storybook.js.org/docs/writing-tests/accessibility-testing
- Playwright: https://playwright.dev/
- Vitest: https://vitest.dev/
- WCAG: https://www.w3.org/WAI/standards-guidelines/wcag/

## Adjacent repository references

Inspect only when useful; do not copy architecture blindly:

- `MelodicBloom/design-standards-2026-2027`
- `MelodicBloom/flore-orthography-memphis-ui`
- `MelodicBloom/Design-Fusion-Studio`
- `MelodicBloom/shader-gallery`

## First Codex completion state

The first meaningful milestone ends at:

```
READY_FOR_HUMAN_VISUAL_REVIEW
```

not `DONE`.
