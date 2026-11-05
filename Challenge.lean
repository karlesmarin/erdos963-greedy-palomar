/-
Copyright (c) 2026 Carles Marín. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Carles Marín
-/
module
public import Mathlib.Combinatorics.Additive.Dissociation
public import Mathlib.Data.Fintype.BigOperators
public import Mathlib.Data.Fintype.EquivFin
public import Mathlib.Data.Nat.Log
public import Mathlib.Order.Lattice.Nat
public import Mathlib.Algebra.CharZero.Infinite
public import Mathlib.Basic.Real.Basic
public import Mathlib.Tactic.Linarith
public import Mathlib.Tactic.NormNum

/-!
# Erdős Problem 963, greedy variant: statement

Statement of record. The definition `Erdos963.f` and the statement `Erdos963.erdos_963.variants.greedy`
are copied verbatim from google-deepmind/formal-conjectures (`FormalConjectures/ErdosProblems/963.lean`,
Apache-2.0), where the statement is tagged `research solved` and left with `sorry`. The proof is in
`Solution.lean`.

* P. Erdős, «Extremal problems in number theory», Proc. Sympos. Pure Math. VIII (1965) 181–189, p. 188.
-/

@[expose] public section

namespace Erdos963

/-- $f(n)$ is the largest $k$ such that every set $A\subset\mathbb{R}$ with $n$ elements has a
dissociated subset with at least $k$ elements. The set of such $k$ contains $0$ (take the empty
subset) and is bounded by $n$, so `sSup` is a true maximum. The set $A$ may contain $0$, which
can never belong to a dissociated set. For $n = 0$ the value is $0$. -/
noncomputable def f (n : ℕ) : ℕ :=
  sSup {k : ℕ | ∀ A : Finset ℝ, A.card = n →
    ∃ B ⊆ A, k ≤ B.card ∧ AddDissociated (B : Set ℝ)}

/--
Erdős noted that the greedy algorithm showed $f(n)\geq \lfloor \log_3 n\rfloor$
[Er65, p. 188].
-/
theorem erdos_963.variants.greedy (n : ℕ) : Nat.log 3 n ≤ f n := by
  sorry

end Erdos963

end
