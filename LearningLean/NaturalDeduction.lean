namespace Exercises

-- Demonstration: a proof is a term whose type is a proposition
variable (P : Prop)
variable (h : P)
#check h          -- h : P   (Lean confirms h is a proof of P)

-- Declarations for the exercises below.
-- `variable` only pulls these into a theorem if that theorem actually mentions them,
-- so it's fine to declare more than any single proof needs.
variable (A B C D I L M P Q R : Prop)

theorem T51 (h1 : P) (h2 : P → Q) : P ∧ Q :=
  ⟨h1, h2 h1⟩

theorem T55 (h1 : P → Q) (h2 : ¬Q) : ¬P :=
  (h2 ∘ h1)




end Exercises
