---
title: Natural Deduction
math:
  '\R': '\Rightarrow'
---

# Natural deduction

The Lean proofs for this chapter live in
[`LearningLean/NaturalDeduction.lean`](https://live.lean-lang.org/#url=https%3A%2F%2Fraw.githubusercontent.com%2Fjoshuawkelly%2FMathematics-Notebook%2Fmain%2FLearningLean%2FNaturalDeduction.lean),
inside the `Exercises` namespace.

## 5.5 Reduction to the absurd. $P \Rightarrow Q,\ ¬ Q ⊢ ¬ P$

This is a very useful technique. Validity of
$P \Rightarrow Q,\ ¬ Q ⊢ ¬ P$ is proved with:

```{figure} fitch.svg
:label: fig-fitch-5-5
:width: 320px
```

The sub-derivation (lines 3–5) discharges the hypothesis $P$: assuming $P$,
[$\Rightarrow$-elimination] on lines 1 and 3 gives $Q$, while line 2 reiterates
$¬ Q$. The contradiction lets us introduce $¬ P$ ($¬$-introduction over
lines 3, 4, 5).

In Lean this is theorem `T55`, where `¬P` is definitionally `P → False`,[^neg-def] so the
whole proof is just function composition:

[^neg-def]: This is the standard definition in Lean's core library: `Not p` unfolds to `p → False`,
    so a proof of `¬P` is exactly a function turning a proof of `P` into a proof of `False`.

```lean
theorem T55 (h1 : P → Q) (h2 : ¬Q) : ¬P :=
  (h2 ∘ h1)
```

## Conjunction introduction. $P,\ P \Rightarrow Q ⊢ P \wedge Q$

Theorem `T51` builds the pair `⟨proof of P, proof of Q⟩` directly, using the
anonymous-constructor notation `⟨_, _⟩`:

```lean
theorem T51 (h1 : P) (h2 : P → Q) : P ∧ Q :=
  ⟨h1, h2 h1⟩
```
