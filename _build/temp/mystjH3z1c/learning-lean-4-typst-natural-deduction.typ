/* Written by MyST v1.10.1 */

#import "myst-imports.typ": *

/* Math Macros */
#let R = $RR$

= Natural Deduction

== Natural deduction <natural-deduction>

The Lean proofs for this chapter live in #link("/NaturalDeduction-2aa9a550d0740195b99b61fcb067c242.lean")[`LearningLean/NaturalDeduction.lean`], inside the `Exercises` namespace.

=== 5.5 Reduction to the absurd. $P arrow.r.double Q, " "¬ Q ⊢ ¬ P$ <id-5-5-reduction-to-the-absurd-p-rightarrow-q-q-p>

This is a very useful technique. Validity of $P arrow.r.double Q, " "¬ Q ⊢ ¬ P$ is proved with:

#show figure: set block(breakable: breakableDefault)
#figure(
  image("files/fitch-a207971ff61ab12964aba9eb7b504b34.svg", width: 40%),
  kind: "figure",
  supplement: [Figure],
) <fig-fitch-5-5>

The sub-derivation (lines 3–5) discharges the hypothesis $P$: assuming $P$, \[$arrow.r.double$-elimination\] on lines 1 and 3 gives $Q$, while line 2 reiterates $¬ Q$. The contradiction lets us introduce $¬ P$ ($¬$-introduction over lines 3, 4, 5).

In Lean this is theorem `T55`, where `¬P` is definitionally `P → False`, so the whole proof is just function composition:

```lean
theorem T55 (h1 : P → Q) (h2 : ¬Q) : ¬P :=
  (h2 ∘ h1)
```

=== Conjunction introduction. $P, " "P arrow.r.double Q ⊢ P and Q$ <conjunction-introduction-p-p-rightarrow-q-p-wedge-q>

Theorem `T51` builds the pair `⟨proof of P, proof of Q⟩` directly, using the anonymous-constructor notation `⟨_, _⟩`:

```lean
theorem T51 (h1 : P) (h2 : P → Q) : P ∧ Q :=
  ⟨h1, h2 h1⟩
```