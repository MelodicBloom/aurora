# Aurora Architecture Contract

## Purpose

Aurora is a reusable visual-system substrate for collage-oriented interfaces, not a product-specific application.

## System boundary

Aurora owns:

- token semantics
- collage recipe grammar
- visual primitives
- composable effects
- motion semantics
- deterministic fixtures
- accessibility behavior
- visual/performance verification

Consumer applications own:

- routing
- authentication
- persistence
- domain data
- CMS
- commerce
- campaign/application-specific workflows

## Architectural flow

```
VisualObservation
   ↓
SemanticToken
   ↓
Mechanism / Recipe
   ↓
Primitive / Effect
   ↓
Composition
   ↓
Specimen
   ↓
Verification Receipt
```

## Portability goal

Aurora should be consumable without importing product-specific state, routes, databases, or server code.

## Implementation preference

Keep public APIs small, typed, composable, and explainable.

Prefer configuration and semantic recipes over duplicated variant components.

## Reversibility

Early architecture decisions should remain inexpensive to revise until at least one external consumer validates the public API.
