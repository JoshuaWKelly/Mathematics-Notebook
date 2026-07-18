/-
Title: Basic Syntax
Author: Joshua W Kelly
Date: 2026-07-15
Description: This file contains the basic syntax of Lean. This is based off of An Introduction to Lean 4
An Introduction to Formal Verification by Enric Cosme Llópez and Lü Gong (See: https://www.uv.es/coslloen/Lean4/)
-/

--- This is a single line comment.

/-
This is a multiline commment.
Here is another line.
-/

#check true

#check 42

#check "Hello, World!"

#check Type

#check Nat

#check ['h', 'e', 'l', 'l', 'o']

#print Bool

--- We can not print Type because it is a type itself.

def pi : Float := 3.1415926

#check pi

#check λ (a b : Nat) => a + b


