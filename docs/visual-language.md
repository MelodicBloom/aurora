# Aurora Visual Language

Aurora must describe visual behavior in observable and executable terms, not adjectives alone.

Use this chain:

```
observable phenomenon
→ visual mechanism
→ semantic function
→ controllable parameters
→ implementation
→ verification
```

## Initial phenomenon vocabulary

These are hypotheses to test against actual reference media:

- auroral bloom
- luminous haze
- translucent overlap
- chromatic diffusion
- cut-paper adjacency
- irregular boundaries
- floating fragments
- depth through occlusion
- soft clipping
- refracted highlight
- granular fiber/paper texture
- spectral edge
- collage seam
- imperfect registration
- layered translucency
- controlled asymmetry
- spatial rhythm
- density gradient
- focal island
- negative-space breathing zone

## Example

### Translucent chromatic overlap

Mechanism:
alpha compositing and blend behavior between adjacent layers.

Semantic function:
relationship, permeability, transformation, convergence.

Controls:

- opacity
- blend mode
- hue distance
- overlap area
- layer depth
- edge softness

Implementation target:
`CollageLayer` plus semantic spectral tokens.

Verification:
same inputs produce the same overlap geometry and bounded color behavior.

## Observation object

```ts
export interface VisualObservation {
  id: string
  description: string
  observableEvidence: string[]
  semanticIntent: string[]
  mechanisms: string[]
  parameters: string[]
  confidence?: number
}
```

This document should evolve from tested observations, not stylistic preference alone.
