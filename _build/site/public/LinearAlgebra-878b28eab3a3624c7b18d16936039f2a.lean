import Mathlib

open Matrix

namespace LinearAlgebra

/-- A vector in ℝ³ is a function `Fin 3 → ℝ`; `![…]` is notation for one. -/
def u : Fin 3 → ℝ := ![1, 2, 3]

/-- Another vector in ℝ³. -/
def v : Fin 3 → ℝ := ![4, 5, 6]

/-- A 2×2 real matrix, written with `!![…]` notation. -/
def A : Matrix (Fin 2) (Fin 2) ℝ := !![1, 2; 3, 4]

#check (u ⬝ᵥ v : ℝ)            -- dot product
#check (A *ᵥ ![5, 6] : Fin 2 → ℝ)  -- matrix–vector product
#check (Aᵀ : Matrix (Fin 2) (Fin 2) ℝ)  -- transpose

-- TODO (flesh out later):
--   * prove `u ⬝ᵥ v = 32`
--   * build a `LinearMap` from `A` via `Matrix.toLin'`
--   * prove `(Aᵀ)ᵀ = A`

end LinearAlgebra
