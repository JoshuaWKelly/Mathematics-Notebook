---
title: Learning Lean 4
---

# Learning Lean 4

These are my working notes and exercises while learning [Lean 4](https://leanprover.github.io/),
an interactive theorem prover and functional programming language [@demoura2021lean4]. They follow
along with *An Introduction to Lean 4 — An Introduction to Formal Verification* by Enric Cosme
Llópez and Lü Gong [@cosme2024lean4] ([course page](https://www.uv.es/coslloen/Lean4/)).

The prose in this book is paired with runnable Lean source in the [`LearningLean/`](LearningLean/)
library of the accompanying Lake project, so every idea here can be checked by the compiler.[^checked]
Where the notes touch existing mathematics, they lean on Mathlib, Lean's community mathematical
library [@mathlib2020].

[^checked]: Every fenced `lean` block corresponds to code that compiles under `lake build`; the
    `#check` and `#print` commands emit `info:` diagnostics rather than errors.

## Chapters

- [Foundations](foundations.md) — a knowledge graph of the skills that build toward
  formalizing mathematics in Lean.
- [Basic syntax](syntax.md) — `#check`, `#print`, definitions, and lambdas.
- [Natural deduction](natural-deduction.md) — propositional proofs, including a Fitch-style
  derivation rendered from Typst.
- [Linear algebra](linear-algebra.md) — vectors, matrices, and linear maps, with Mathlib
  spellings (a work in progress).

## How the pieces fit together

| In this book | In the code |
| --- | --- |
| [Basic syntax](syntax.md) | [`LearningLean/BasicSyntax.lean`](https://live.lean-lang.org/#url=https%3A%2F%2Fraw.githubusercontent.com%2Fjoshuawkelly%2FMathematics-Notebook%2Fmain%2FLearningLean%2FBasicSyntax.lean) |
| [Natural deduction](natural-deduction.md) | [`LearningLean/NaturalDeduction.lean`](https://live.lean-lang.org/#url=https%3A%2F%2Fraw.githubusercontent.com%2Fjoshuawkelly%2FMathematics-Notebook%2Fmain%2FLearningLean%2FNaturalDeduction.lean) |
| [Linear algebra](linear-algebra.md) | [`LearningLean/LinearAlgebra.lean`](https://live.lean-lang.org/#url=https%3A%2F%2Fraw.githubusercontent.com%2Fjoshuawkelly%2FMathematics-Notebook%2Fmain%2FLearningLean%2FLinearAlgebra.lean) |

See the [README](README.md) for how to build the Lean project and how to preview or build this book.
