# ➕ Erdős Problem 963, greedy variant

[![Palomar preflight](https://github.com/karlesmarin/erdos963-greedy-palomar/actions/workflows/palomar-preflight.yml/badge.svg)](https://github.com/karlesmarin/erdos963-greedy-palomar/actions/workflows/palomar-preflight.yml)

Lean 4 / Mathlib proof of the greedy bound `Nat.log 3 n ≤ f n` (Erdős 1965, p. 188), where `f n` is the largest `k`
such that every set of `n` reals has a dissociated subset with at least `k` elements, as stated without proof in
[google-deepmind/formal-conjectures](https://github.com/google-deepmind/formal-conjectures) (Erdős Problem 963).

- 📜 `Challenge.lean`: the definition and the statement, copied verbatim from formal-conjectures.
- 🧩 `Solution.lean`: the proof (an element outside the `{-1, 0, 1}`-span of a dissociated set keeps it dissociated;
  the span has at most `3 ^ #B` elements).
- ⚖️ `comparator.json`: the [Comparator](https://github.com/leanprover/comparator) configuration;
  `formalization.yaml`: provenance and metadata.
- 🔧 Lean `v4.35.0`; Mathlib pinned in `lakefile.toml` (commit `f0b4c81`).
- ✅ No `sorry`; axioms `propext`, `Classical.choice`, `Quot.sound`.

🧮 The substantive development lives in the collection
[karlesmarin/formalizations](https://github.com/karlesmarin/formalizations)
(`Formalizations/Combinatorics/Additive/DissociatedGreedy.lean`, commit `4cc9c45`); this repository is a thin wrapper.

## 🚀 Build

```
lake exe cache get && lake build
```
