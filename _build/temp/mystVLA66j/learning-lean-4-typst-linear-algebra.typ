/* Written by MyST v1.10.1 */

#import "myst-imports.typ": *

/* Math Macros */
#let R = $RR$

= Linear Algebra

== Linear algebra <linear-algebra>

A scratch chapter for linear-algebra notes — enough structure to flesh out later, and enough variety (numbered equations, a table, admonitions, and interleaved Lean) to show the book template in action. The runnable code lives in #link("/LinearAlgebra-21b7e76089afe77d1ab624eef2fc49b2.lean")[`LearningLean/LinearAlgebra.lean`].

#noteBlock[
This chapter is a work in progress. Sections marked *To flesh out* are placeholders.
]

=== Vectors <vectors>

A vector in $R^n$ is an ordered list of $n$ real numbers. We write column vectors as $arrow(u) = (u_1, dots.h, u_n)$ with each $u_i in R$.

The *dot product* of $arrow(u), arrow(v) in R^n$ is the scalar

$ arrow(u) dot.op arrow(v) = sum_(i = 1)^n u_i thin v_i. $ <eq-dot>
For a concrete computation, take $arrow(u) = (1, 2, 3)$ and $arrow(v) = (4, 5, 6)$. Then by equation #link(<eq-dot>)[(1)],

$ arrow(u) dot.op arrow(v) = 1 dot.op 4 + 2 dot.op 5 + 3 dot.op 6 = 32. $
In Lean, a vector is a function `Fin n → ℝ`, and `![…]` is notation for one:

```lean
def u : Fin 3 → ℝ := ![1, 2, 3]
def v : Fin 3 → ℝ := ![4, 5, 6]

#check u ⬝ᵥ v      -- `⬝ᵥ` is Mathlib's dot product, of type ℝ
```

=== Matrices <matrices>

An $m times n$ matrix $A in R^(m times n)$ is a rectangular array of scalars. For example,

$ A = mat(delim: "[", 1, 2; 3, 4) in R^(2 times 2). $
The *matrix–vector product* $A arrow(x)$ takes a vector $arrow(x) in R^n$ to a vector in $R^m$. With $arrow(x) = (5, 6)$:

$ A arrow(x) = mat(delim: "[", 1, 2; 3, 4) mat(delim: "[", 5; 6) = mat(delim: "[", 1 dot.op 5 + 2 dot.op 6; 3 dot.op 5 + 4 dot.op 6) = mat(delim: "[", 17; 39). $
A few operations and their Mathlib spellings:

#tablex(columns: 3, header-rows: 1, repeat-header: true, ..tableStyle, ..columnStyle,
[
Operation
],
[
Math
],
[
Lean / Mathlib
],
[
Dot product
],
[
$arrow(u) dot.op arrow(v)$
],
[
`u ⬝ᵥ v`
],
[
Matrix–vector product
],
[
$A arrow(x)$
],
[
`A *ᵥ x`
],
[
Matrix product
],
[
$A B$
],
[
`A * B`
],
[
Transpose
],
[
$A^top$
],
[
`Aᵀ`
],
)
```lean
def A : Matrix (Fin 2) (Fin 2) ℝ := !![1, 2; 3, 4]

#check A *ᵥ ![5, 6]   -- matrix-vector product, of type `Fin 2 → ℝ`
```

=== Linear maps <linear-maps>

A *linear map* $T : R^n arrow.r R^m$ is a function satisfying $T (alpha arrow(u) + arrow(v)) = alpha thin T (arrow(u)) + T (arrow(v))$ for all scalars $alpha$ and vectors $arrow(u), arrow(v)$. Every such map is represented by a matrix, and matrix multiplication corresponds to composition of the maps.

#noteBlock[
*To flesh out:* state and prove that `Matrix.mulVec A` is a `LinearMap`, and connect it to `Matrix.toLin`.
]

=== A worked computation <a-worked-computation>

*To flesh out.* A step-by-step example — e.g. solving $A arrow(x) = arrow(b)$ by row reduction — narrated alongside the corresponding Lean definitions, so the computation and its formalization sit side by side.

=== Exercises <exercises>

#noteBlock[
*To flesh out.* Add exercises here, e.g.:

+ Show the dot product is symmetric: $arrow(u) dot.op arrow(v) = arrow(v) dot.op arrow(u)$.
+ Prove $(A^top)^top = A$ in Lean using `Matrix.transpose_transpose`.
]