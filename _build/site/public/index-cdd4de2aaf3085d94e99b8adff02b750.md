---
title: Learning Lean 4
---

# Learning Lean 4

These are my working notes and exercises while learning [Lean 4](https://leanprover.github.io/),
an interactive theorem prover and functional programming language. They follow along with
*An Introduction to Lean 4 — An Introduction to Formal Verification* by Enric Cosme Llópez and
Lü Gong ([course page](https://www.uv.es/coslloen/Lean4/)).

The prose in this book is paired with runnable Lean source in the [`LearningLean/`](LearningLean/)
library of the accompanying Lake project, so every idea here can be checked by the compiler.

## Chapters

- [Basic syntax](syntax.md) — `#check`, `#print`, definitions, and lambdas.
- [Natural deduction](natural-deduction.md) — propositional proofs, including a Fitch-style
  derivation rendered from Typst.
- [Linear algebra](linear-algebra.md) — vectors, matrices, and linear maps, with Mathlib
  spellings (a work in progress).

## How the pieces fit together

| In this book | In the code |
| --- | --- |
| [Basic syntax](syntax.md) | [`LearningLean/BasicSyntax.lean`](LearningLean/BasicSyntax.lean) |
| [Natural deduction](natural-deduction.md) | [`LearningLean/NaturalDeduction.lean`](LearningLean/NaturalDeduction.lean) |
| [Linear algebra](linear-algebra.md) | [`LearningLean/LinearAlgebra.lean`](LearningLean/LinearAlgebra.lean) |

See the [README](README.md) for how to build the Lean project and how to preview or build this book.
