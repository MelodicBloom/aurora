# Aurora Collage UI System

Aurora is a portable, token-driven collage visual system and specimen environment.

Its job is to translate observable visual phenomena into explicit, reusable controls:

```
observation → semantic intent → token → mechanism → component/effect
            → composition rule → motion rule → specimen → verification
```

## Current state

This repository is intentionally initialized as an architecture-first foundation.
Production implementation should begin only after the baseline audit and architecture
contracts in `AGENTS.md` are followed.

## Intended boundaries

Aurora owns:

- visual-language semantics
- design tokens
- collage composition grammar
- motion grammar
- reusable primitives and effects
- deterministic fixtures/specimens
- accessibility and performance contracts

Aurora does not own product authentication, databases, CMS infrastructure, or
consumer-application business logic.

## First builder instruction

Read `AGENTS.md` before modifying implementation. Record the exact HEAD SHA,
audit the repository, preserve deterministic behavior, and leave a decision receipt
for consequential architectural choices.
