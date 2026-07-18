---
title: Linear Algebra
math:
  '\R': '\mathbb{R}'
  '\vec': '\mathbf{#1}'
---

# Linear algebra

A scratch chapter for linear-algebra notes — enough structure to flesh out later, and
enough variety (numbered equations, a table, admonitions, and interleaved Lean) to show
the book template in action. The runnable code lives in
[`LearningLean/LinearAlgebra.lean`](LearningLean/LinearAlgebra.lean).

```{note}
This chapter is a work in progress. Sections marked **To flesh out** are placeholders.
```

## Vectors

A vector in $\R^n$ is an ordered list of $n$ real numbers. We write column vectors as
$\vec{u} = (u_1, \dots, u_n)$ with each $u_i \in \R$.

The **dot product** of $\vec{u}, \vec{v} \in \R^n$ is the scalar

```{math}
:label: eq-dot
\vec{u} \cdot \vec{v} = \sum_{i=1}^{n} u_i\, v_i .
```

For a concrete computation, take $\vec{u} = (1, 2, 3)$ and $\vec{v} = (4, 5, 6)$. Then by
equation [](#eq-dot),

$$
\vec{u} \cdot \vec{v} = 1\cdot 4 + 2\cdot 5 + 3\cdot 6 = 32 .
$$

In Lean, a vector is a function `Fin n → ℝ`, and `![…]` is notation for one. The dot product and
the matrix operations below follow the spellings used in Mathlib [@mathlib2020]:[^mathlib-dot]

[^mathlib-dot]: Mathlib writes the dot product as `⬝ᵥ` (`\cdotv`) rather than reusing `·`, to keep
    it distinct from scalar multiplication.

```lean
def u : Fin 3 → ℝ := ![1, 2, 3]
def v : Fin 3 → ℝ := ![4, 5, 6]

#check u ⬝ᵥ v      -- `⬝ᵥ` is Mathlib's dot product, of type ℝ
```

## Matrices

An $m \times n$ matrix $A \in \R^{m \times n}$ is a rectangular array of scalars. For example,

$$
A = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \in \R^{2 \times 2}.
$$

The **matrix–vector product** $A\vec{x}$ takes a vector $\vec{x} \in \R^n$ to a vector in
$\R^m$. With $\vec{x} = (5, 6)$:

$$
A\vec{x}
= \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}\begin{bmatrix} 5 \\ 6 \end{bmatrix}
= \begin{bmatrix} 1\cdot 5 + 2\cdot 6 \\ 3\cdot 5 + 4\cdot 6 \end{bmatrix}
= \begin{bmatrix} 17 \\ 39 \end{bmatrix}.
$$

A few operations and their Mathlib spellings:

| Operation | Math | Lean / Mathlib |
| --- | --- | --- |
| Dot product | $\vec{u} \cdot \vec{v}$ | `u ⬝ᵥ v` |
| Matrix–vector product | $A\vec{x}$ | `A *ᵥ x` |
| Matrix product | $AB$ | `A * B` |
| Transpose | $A^\top$ | `Aᵀ` |

```lean
def A : Matrix (Fin 2) (Fin 2) ℝ := !![1, 2; 3, 4]

#check A *ᵥ ![5, 6]   -- matrix-vector product, of type `Fin 2 → ℝ`
```

## Linear maps

A **linear map** $T : \R^n \to \R^m$ is a function satisfying
$T(\alpha\vec{u} + \vec{v}) = \alpha\,T(\vec{u}) + T(\vec{v})$ for all scalars $\alpha$ and
vectors $\vec{u}, \vec{v}$. Every such map is represented by a matrix, and matrix
multiplication corresponds to composition of the maps.

```{note}
**To flesh out:** state and prove that `Matrix.mulVec A` is a `LinearMap`, and connect it to
`Matrix.toLin`.
```

## A worked computation

**To flesh out.** A step-by-step example — e.g. solving $A\vec{x} = \vec{b}$ by row
reduction — narrated alongside the corresponding Lean definitions, so the computation and its
formalization sit side by side.

## Exercises

```{note}
**To flesh out.** Add exercises here, e.g.:

1. Show the dot product is symmetric: $\vec{u} \cdot \vec{v} = \vec{v} \cdot \vec{u}$.
2. Prove $(A^\top)^\top = A$ in Lean using `Matrix.transpose_transpose`.
```
