# Aurora Fixture Matrix

Fixtures must remain deterministic.

Initial target set:

1. minimal-collage
2. dense-editorial-collage
3. image-forward
4. type-forward
5. spectral-abstract
6. mobile-narrow
7. wide-display
8. dark-theme
9. light-theme
10. high-contrast
11. reduced-motion
12. degraded-effects

Each fixture should record:

- recipe ID
- stable seed where randomness exists
- viewport dimensions
- theme
- capability/fallback mode
- expected accessibility constraints

Do not generate a new random composition on each visual test run.
